package com.evony.common.server.events {
import com.evony.common.BaseBean;

public class KickedOut extends BaseBean {

    public function KickedOut(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.ip != null) {
            this.ip = param2.ip;
        }
    }

    public var ip:String;
}
}
