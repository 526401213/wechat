package com.wechat.utils;

import java.util.HashMap;
import java.util.Map;

public class WechatUtils {

	/**
	 * 获取AccessToken
	 * @param appId
	 * @param appSecret
	 * @return
	 */
	public static Map<String, String> getAccessToken(String appId,String appSecret){
		Map<String, String> rs=new HashMap<>();
		//https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET
		return rs;
	}
}
