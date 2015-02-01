package com.evony.common.server.events {
import com.evony.common.BaseBean;

public class CbUpdate extends BaseBean {

    public function CbUpdate(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.tp != null) {
            this.tp = param2.tp;
        }
        if (param2.text != null) {
            this.text = param2.text;
        }
    }

    public var tp:int;

    public var text:String;
}
}
