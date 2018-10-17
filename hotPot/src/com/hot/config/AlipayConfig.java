package com.hot.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016092100565934";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCIFpSxkd71FU8uBNGavfDYa+VqhY37y+82gq1ORBr+h5Tsc6LSIji8ecyvuGbz2yiesdXhLiHHoVr/S+VPvBldJinkl+i2pljERJmioSHkVi8uY/Qjkb2Tv0YodHlODWmvbdNajIc+0UJdfWKSCDcUGJb8efFO60VDfBCM/VqGJLr9SXVBga5gvhoH+CixbZ2AB8LCJ4oWFDZJZDZ8Vr2/vgE5GYiRT7OZ7Rc6SBrmAjhy7nVMZsV6p2tPPS2MvkLDUalGbl0o533XqAbxDPXHbAj2ll4zDHvjC3qd/pqLOjS3KwF+IFCPYj4rkCzsfBccXt9UvdeVT8laG+TVtz8xAgMBAAECggEAfq+OspMZ3Et/D1b7DTN+zun6gqRbnaimQrd5wB9UhdgPgeLQExA6gvJb4sUmSiKd+MWSVnLMjXufK4Qqr4RqlDVf0Ga+A7JtdiBqaWPZGihE+cmgz6/vrGfmVui+uDNyTBZQJ74kdQz22/NKXKl7JKEThWu7gP0x2HXZLnb322Ffb8U56c2cPj5bRNWHTC8N5TgwvHpWpno1dxiefwUKL5+GK9hxHgTOEPG9AmLshjOvAwui1xKyieK293Xb+RHA0qbIcPsg0VslcyJwf1Lg/XsY90U3eEdBrwr8i7wAU4w3d+ilbwnYkTdSlzsGbFqbH5ZUfTdu/RcmDM/qWq+NNQKBgQDKVEWNWw4GlLS8m39Qc4vrx36rz71R5pEk8a1wda2X540TFmfcsujNKmNH9gNoiNG7Aaj4iX79Jn8eQeNCzLRkXJ/eNYzUhQzsS/uc8XgfFlb/0PVNt/wjNY+7dapRFaT9mZF3BtvWejUgC3BHe7lI5d3oU7t4CawPvlNlVfNcawKBgQCsMAfMBn7GYg2YvkNpNbokNMX5qv0R5rBwwJhduIgAgCdn6t3TvPnjpXaXeHfX6QPn0JZeIYrCwhCbMPS1mkVE7D3GWbs4UPSrSq0kOxOMCZCkg7e0FJmyk/FurFt4bZy42JLKx+celQ6fCBhaZZc/e08+s1CHaiVLvxBtSzr50wKBgD1QFFOlyDZOUgblyEsE+N3Wcph2N5TeHhXn9vshbh2eWa3zGD5VKR8jPTrNXnMLIyNceWv3nrfwNo1gwhG4HuJa/0dDSw4L08K3s+P3eMNS7cJP/EY0/v9cd9YC7j3sJTeElgRP28a++eJgFQJUh+2DWx/QX/scUzviHTuUNE9JAoGABNI3dav84rseHFe/dXOuqZLctDfobBbke9O4sG8ZR8JO2CcIXQRejtQ0NNuHp4D7vgLmIu6XfwqGAoJlZ6xRIjPnKuWaS2Jg52bo4CnTS0l9Rk3119H317syuGGVEhMnnzlZKtpcC0wrI6LLY8SSbpGaT2wf5hq/vpYz9It1tEcCgYEAlfcSUKd7QWuBHGs9ApBWKs6mGqyUKOyOASthdHHYd7YdNvKOmQSx6B04R+jbb5H10K5XXX/A0097CBhor9BosTtuyzc26yYI10UGup2o30dC/rfYXtDOU1vmgKnjdnhjrcZIPf1lij4S9Z4Cy96uCen4CenRWFsx4JpQAjc4am0=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAshA6EwrDc1dwlcHObSg6M7bSG4T9gHxs7/7gi4vcH/a05V8yJZcESnhgAbffHaqEolF8UyYX/Ym/qaLWtG4xqypGJfeZ42KhhfKo7eDGYZKed/ELLbW28JRlg6+LhYCHmG3RrBxhJ4nciMeaz0iixkoMxfxyrVxBSaEHQ796w1EfGZFb9QdRl75WCVYs3jOD1gQIOo67xyGSektlXaO8ODr1pEVruUXponjKMm7EjDQlKVk6KV6K9Htq7mqIU9BlYdcmtJU/x1sTYgd/hfEtNcKF44TiZ+YbGy+k9egT2H9thLEgZIFzTca10qIVNZ/Bx9AVOr1mvFZ40WT0JK3NQwIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://vehpr3.natappfree.cc/hotPot/order/zhiFu.do";
    
	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/hotPot/order/getOrder.do";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "D:\\日志\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
    
    
    
}

