package com.evony.common.module.trade {
import com.evony.common.BaseBean;
import com.evony.common.beans.MarketTradeBean;

import mx.collections.ArrayCollection;

public class SearchTradesResponse extends BaseBean {

    public function SearchTradesResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        var _loc5_:Object = null;
        this.buyersArray = new ArrayCollection();
        this.sellersArray = new ArrayCollection();
        super(param1, param2, param3, param4);
        if (param2.buyers) {
            for each(_loc5_ in param2.buyers) {
                this.buyersArray.addItem(new MarketTradeBean(_loc5_));
            }
        }
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.sellers) {
            for each(_loc5_ in param2.sellers) {
                this.sellersArray.addItem(new MarketTradeBean(_loc5_));
            }
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
        }
    }

    public var buyersArray:ArrayCollection;

    public var packageId:Number;

    public var sellersArray:ArrayCollection;

    public var msg:String;

    public var errorMsg:String;

    public var ok:int;
}
}
