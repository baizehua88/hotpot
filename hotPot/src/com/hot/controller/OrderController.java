package com.hot.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;
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
import com.hot.model.Detail;
import com.hot.model.Order;
import com.hot.service.DeskService;
import com.hot.service.OrderService;
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
	
	@RequestMapping("/addOrder.do")
	@ResponseBody
	public int addOrder(Order order){
		//ModelAndView mv = new ModelAndView();
		//order.setDid(Integer.parseInt(request.getParameter("did")));
		System.out.println(order.getDid());
		order.setOtime(getTime());
		order.setOstate("未支付");
		orderService.addOrder(order);
		//得到产生的订单id------------------------------------
		Order order1 =  orderService.getOrderId(order);
		//修改餐桌状态
		deskService.updateDeskState(order.getDid());
		System.out.println(order1.getOid());		
		//再返回产生的订单id------------------------------------
		return order1.getOid();
		
	}
	
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
	
	@RequestMapping("/orderList.do")
	public ModelAndView orderList(){
		ModelAndView mv =  new ModelAndView();
		List<Order> orderList = orderService.getOrders();
		System.out.println(orderList);
		mv.addObject("orderList", orderList);
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
	public void insertOrder(HttpServletRequest request) throws Exception{
		
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
					AlipayNotifyParam param = buildAlipayNotifyParam(params);
					String trade_status = param.getTrade_status();
					if (trade_status.equals("TRADE_SUCCESS")
						|| trade_status.equals("TRADE_FINISHED")) {
						order.setOtime(param.getBody());;
						order.setOstate("已付款");
						orderService.zhiFu(order);
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
    public Order test(int id,HttpServletRequest request,HttpSession session) {
    	
    	Order order = new Order();
    	order = orderService.getOne(id);
    	String trade_no = RandomTool.RandomCount();
    	session.setAttribute("trade_no", trade_no);
    	session.setAttribute("price", order.getOprice().toString());
    	session.setAttribute("body", order.getOtime());
    	return order;
    	
    }
    
    private AlipayNotifyParam buildAlipayNotifyParam(Map<String, String> params) {
        String json = JSON.toJSONString(params);
        return JSON.parseObject(json, AlipayNotifyParam.class);
    }
    
    
    
}
