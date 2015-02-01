package com.evony.common.server.events {
import com.evony.common.BaseBean;
import com.evony.common.beans.TroopBean;

public class TroopUpdate extends BaseBean {

    public function TroopUpdate(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.troop != null) {
            this.troop = new TroopBean(param2.troop);
        }
        if (param2.caslteId != null) {
            this.caslteId = param2.caslteId;
        }
    }

    public var troop:TroopBean;

    public var caslteId:int;
}
}
