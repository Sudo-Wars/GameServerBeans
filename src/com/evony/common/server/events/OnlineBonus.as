package com.evony.common.server.events {
import com.evony.common.BaseBean;

public class OnlineBonus extends BaseBean {

    public function OnlineBonus(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.captcha != null) {
            this.captcha = param2.captcha;
        }
    }

    public var captcha:String;
}
}
