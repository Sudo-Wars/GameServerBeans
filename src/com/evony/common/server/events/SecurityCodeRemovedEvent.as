package com.evony.common.server.events {
import com.evony.common.BaseBean;

public class SecurityCodeRemovedEvent extends BaseBean {

    public function SecurityCodeRemovedEvent(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.isSetSecurityCode != null) {
            this.isSetSecurityCode = param2.isSetSecurityCode;
        }
    }

    public var isSetSecurityCode:Boolean;
}
}
