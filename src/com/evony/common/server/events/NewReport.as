package com.evony.common.server.events {
import com.evony.common.BaseBean;

public class NewReport extends BaseBean {

    public function NewReport(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.other_count != null) {
            this.other_count = param2.other_count;
        }
        if (param2.trade_count != null) {
            this.trade_count = param2.trade_count;
        }
        if (param2.army_count != null) {
            this.army_count = param2.army_count;
        }
        if (param2.count != null) {
            this.count = param2.count;
        }
    }

    public var other_count:int;

    public var trade_count:int;

    public var army_count:int;

    public var count:int;
}
}
