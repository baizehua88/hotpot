package com.hot.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;
import java.util.Vector;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alipay.api.internal.util.AlipaySignature;
import com.hot.config.AlipayConfig;
import com.hot.model.AlipayNotifyParam;
import com.hot.model.Customer;
import com.hot.model.Desk;
import com.hot.model.Detail;
import com.hot.model.Finance;
import com.hot.model.Order;
import com.hot.service.CustomerService;
import com.hot.service.DeskService;
import com.hot.service.FinanceService;
import com.hot.service.OrderService;
import com.hot.utils.DingZhi;
import com.hot.utils.RandomTool;

@Controller
@RequestMapping("/order")
public class OrderController {

	private ExecutorService executorService = Executors.newFixedThreadPool(20);
	
	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	
	@Autowired
	@Qualifier("deskService")
	private DeskService deskService;
	
	@Autowired
	@Qualifier("financeService")
	private FinanceService financeService;
	
	@Autowired
	@Qualifier("customerService")
	private CustomerService customerService;
	
	//下单
	@RequestMapping("/addOrder.do")
	@ResponseBody
	public int addOrder(Order order){
		order.setOtime(getTime());
		order.setOstate("未支付");
		orderService.addOrder(order);
		//得到产生的订单id------------------------------------
		Order order1 =  orderService.getOrderId(order);
		//修改餐桌状态
		deskService.updateDeskState(order.getDid());
		//再返回产生的订单id------------------------------------
		return order1.getOid();
		
	}
	
	//买单结算--查询所有未付款订单
	@RequestMapping("/getOrder.do")
	public ModelAndView getOrder() {
		ModelAndView mv = new ModelAndView();
		List<Order> lOrders = new ArrayList<Order>();
		lOrders = orderService.getOrder();
		mv.addObject("orderList", lOrders);
		mv.setViewName("pay");
		return mv;
	}
	
	public String getTime() {
		Date now = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式 yyyy/MM/dd HH:mm:ss
		String time = dateFormat.format( now ); 
		return time;
	}
	
	//订单列表----所有订单查询
	@RequestMapping("/orderList.do")
	public ModelAndView orderList(Order order){
		ModelAndView mv =  new ModelAndView();
		List<Order> orderList = orderService.getOrders();
		
		// 分页显示
		int page = 1;
		int start = 0;
		if (order.getPage() != null) {
			page = order.getPage();
		}
		// 数据总条数
		int total = orderList.size();
		// 总页数
		int totalPage = total / DingZhi.hang;
		Vector<Integer> pageArr = new Vector<Integer>();
		if (total % DingZhi.hang != 0) {
			totalPage += 1;
		}
		if (page >= DingZhi.page) {
			start = page / DingZhi.page * DingZhi.hang;
		}
		int num = start + 1;
		// 页数列表
		while (!(num > totalPage || num > start + DingZhi.page)) {
			pageArr.add(new Integer(num));
			++num;
		}
		start = (page - 1) * DingZhi.hang;
		order.setStart(start);
		order.setRows(DingZhi.hang);
		List<Order> orders = new ArrayList<Order>();
		orders= orderService.pageOrder(order);
		
		mv.addObject("orderList", orders);
		mv.addObject("pagelist", pageArr);
		mv.addObject("page", page);
		mv.addObject("totalpage", totalPage);
		mv.setViewName("orderList");
		return mv;
		
	}
	
	@RequestMapping("getDetailOid.do")
	@ResponseBody
	public int getDetailOid(Order order){
		order.setOstate("未支付");
		Order order2 = orderService.getDetailOid(order);
		return order2.getOid();		
	}
	/**
	 * 支付完成操作,改变订单付款状态
	 * @param request
	 * @throws Exception
	 */
	@RequestMapping("/zhiFu.do")
	@ResponseBody
	public void insertOrder(HttpServletRequest request,HttpSession session) throws Exception{
		
		Map<String,String> params = convertRequestParamsToMap(request);
		String paramsJson = JSON.toJSONString(params);
		
		AlipayConfig.logResult("支付宝回调："+paramsJson);
		boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type);
		
		//验证签名
		if(signVerified) {
			AlipayConfig.logResult("支付宝回调签名认证成功");
			
			//另起线程处理业务
			executorService.execute(new Runnable() {
				
				@Override
				public void run() {
					Order order = new Order();
					Order order1 = new Order();
					Customer customer = new Customer();
					Desk desk = new Desk();
					AlipayNotifyParam param = buildAlipayNotifyParam(params);
					String trade_status = param.getTrade_status();
					if (trade_status.equals("TRADE_SUCCESS")
						|| trade_status.equals("TRADE_FINISHED")) {
						order.setOtime(param.getBody());;
						order.setOstate("已付款");
						order.setOprice(Double.parseDouble(param.getTotal_amount().toString()));
						orderService.zhiFu(order);
						
						//增加积分----------------------------------------------------------
						customer.setCphone(param.getPassback_params());
						double price = Double.parseDouble(param.getTotal_amount().toString());
						customer.setCintegral((int)price);
						System.out.println("电话号码："+param.getPassback_params());
						customerService.addCintegral(customer);
						
						//加入日结算表
						Finance finance =new Finance();
						int fincome = param.getTotal_amount().intValue();
						finance.setFincome(fincome);
						finance.setFtime(param.getBody());
						finance.setFbalance(fincome);
						finance.setFexpend(0);
						finance.setFprofit(fincome);
						financeService.addFinance(finance);

						order1 = orderService.selOrder(order);
						desk.setDid(order1.getDid());
						desk.setDstate("未使用");
						orderService.upDesk(desk);
					}
				}
			});
		}
	}
	
	// 将request中的参数转换成Map
    private static Map<String, String> convertRequestParamsToMap(HttpServletRequest request) {
        Map<String, String> retMap = new HashMap<String, String>();

        Set<Entry<String, String[]>> entrySet = request.getParameterMap().entrySet();

        for (Entry<String, String[]> entry : entrySet) {
            String name = entry.getKey();
            String[] values = entry.getValue();
            int valLen = values.length;

            if (valLen == 1) {
                retMap.put(name, values[0]);
            } else if (valLen > 1) {
                StringBuilder sb = new StringBuilder();
                for (String val : values) {
                    sb.append(",").append(val);
                }
                retMap.put(name, sb.toString().substring(1));
            } else {
                retMap.put(name, "");
            }
        }
        return retMap;
    }
    
    @RequestMapping("/test.do")
    @ResponseBody
    public Order test(int id,String cphone , HttpServletRequest request,HttpSession session) {
    	Customer customer = new Customer();
    	customer.setCphone(cphone);
    	Order order = new Order();
    	order = orderService.getOne(id);
    	double discount = order.getOprice();      
    	if (cphone.equals("") || cphone==null) {			
			discount = order.getOprice();
		}else{
			customerService.getCintegral(customer);
			//得到顾客积分
			int cintegral = customerService.getCintegral(customer).getCintegral();
			if (cintegral<100) {
				discount = order.getOprice();
			}else if (cintegral>=100 && cintegral<2000) {
				discount = order.getOprice()*0.95;
			}else if (cintegral>=2000 && cintegral<3000) {
				discount = order.getOprice()*0.9;
			}else if (cintegral>=3000 && cintegral<5000) {
				discount = order.getOprice()*0.85;
			}else {
				discount = order.getOprice()*0.8;
			}
		}
    	String trade_no = RandomTool.RandomCount();
    	session.setAttribute("cphone", cphone);
    	session.setAttribute("trade_no", trade_no);
    	session.setAttribute("price", String.format("%.2f", discount));
    	session.setAttribute("body", order.getOtime());
    	return order;
    	
    }
    
    private AlipayNotifyParam buildAlipayNotifyParam(Map<String, String> params) {
        String json = JSON.toJSONString(params);
        return JSON.parseObject(json, AlipayNotifyParam.class);
    }
}
