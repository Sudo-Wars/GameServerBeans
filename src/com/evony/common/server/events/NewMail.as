package com.evony.common.server.events {
import com.evony.common.BaseBean;

public class NewMail extends BaseBean {

    public function NewMail(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.count_inbox != null) {
            this.count_inbox = param2.count_inbox;
        }
        if (param2.count != null) {
            this.count = param2.count;
        }
        if (param2.count_system != null) {
            this.count_system = param2.count_system;
        }
    }

    public var count_inbox:int;

    public var count:int;

    public var count_system:int;
}
}
