package com.evony.common.server.events {
import com.evony.common.BaseBean;
import com.evony.common.beans.TradeBean;

public class TradesUpdate extends BaseBean {

    public function TradesUpdate(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.updateType != null) {
            this.updateType = param2.updateType;
        }
        if (param2.castleId != null) {
            this.castleId = param2.castleId;
        }
        if (param2.tradeBean != null) {
            this.tradeBean = new TradeBean(param2.tradeBean);
        }
    }

    public var castleId:int;

    public var tradeBean:TradeBean;

    public var updateType:int;
}
}
