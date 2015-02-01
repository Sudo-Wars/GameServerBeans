package com.evony.common.module.common {
import com.evony.common.BaseBean;
import com.evony.common.beans.PlayerBean;

public class CreatePlayerResponse extends BaseBean {

    public static const CREATE_RESULT_HAVE_CREATED:int = -3;
    public static const CREATE_RESULT_ZONE_FULL:int = -2;
    public static const CREATE_RESULT_NAME_DUP:int = -1;
    public static const CREATE_RESULT_NEED_CAPTCHA:int = -4;

    public function CreatePlayerResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.player != null) {
            this.player = new PlayerBean(param2.player);
        }
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
        if (param2.captcha != null) {
            this.captcha = param2.captcha;
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
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
