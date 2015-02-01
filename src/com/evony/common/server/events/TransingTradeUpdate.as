package com.evony.common.server.events {
import com.evony.common.BaseBean;
import com.evony.common.beans.TransingTradeBean;

public class TransingTradeUpdate extends BaseBean {

    public function TransingTradeUpdate(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.bean != null) {
            this.bean = new TransingTradeBean(param2.bean);
        }
        if (param2.updateType != null) {
            this.updateType = param2.updateType;
        }
        if (param2.castleId != null) {
            this.castleId = param2.castleId;
        }
    }

    public var bean:TransingTradeBean;

    public var castleId:int;

    public var updateType:int;
}
}
