package com.evony.common.module.city {
import com.evony.common.BaseBean;
import com.evony.common.beans.StoreBean;

import mx.collections.ArrayCollection;

public class StoreListResponse extends BaseBean {

    public function StoreListResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        var _loc5_:Object = null;
        this.storeBeansArray = new ArrayCollection();
        super(param1, param2, param3, param4);
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.totalCap != null) {
            this.totalCap = param2.totalCap;
        }
        if (param2.storeBeans) {
            for each(_loc5_ in param2.storeBeans) {
                this.storeBeansArray.addItem(new StoreBean(_loc5_));
            }
        }
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
    }

    public var msg:String;

    public var ok:int;

    public var packageId:Number;

    public var totalCap:int;

    public var storeBeansArray:ArrayCollection;

    public var errorMsg:String;
}
}
