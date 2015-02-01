package com.evony.common.server.events {
import com.evony.common.BaseBean;
import com.evony.common.beans.PlayerBean;

public class LoginResponse extends BaseBean {

    public static const LOGIN_RESULT_NEED_CREATE_PLAYER:int = -4;
    public static const LOGIN_RESULT_ERROR_USERNAME:int = -2;
    public static const LOGIN_RESULT_NEED_CAPTCHA:int = -5;
    public static const LOGIN_RESULT_SERVER_FULL:int = -3;

    public function LoginResponse(eventType:String, response:Object, bubbles:Boolean = false, cancelable:Boolean = false) {
        super(eventType, response, bubbles, cancelable);
        if (response.packageId != null) {
            this.packageId = response.packageId;
        }
        if (response.msg != null) {
            this.msg = response.msg;
        }
        if (response.player != null) {
            this.player = new PlayerBean(response.player);
        }
        if (response.errorMsg != null) {
            this.errorMsg = response.errorMsg;
        }
        if (response.captcha != null) {
            this.captcha = response.captcha;
        }
        if (response.ok != null) {
            this.ok = response.ok;
        }
    }

    public var player:PlayerBean;

    public var msg:String;

    public var packageId:Number;

    public var errorMsg:String;

    public var captcha:String;

    public var ok:int;
}
}
