package com.evony.common.module.troop {
import com.evony.common.BaseBean;
import com.evony.common.beans.AllProduceBean;

import mx.collections.ArrayCollection;

public class ProduceQueueResponse extends BaseBean {

    public function ProduceQueueResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        var _loc5_:Object = null;
        this.allProduceQueueArray = new ArrayCollection();
        super(param1, param2, param3, param4);
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
        }
        if (param2.allProduceQueue) {
            for each(_loc5_ in param2.allProduceQueue) {
                this.allProduceQueueArray.addItem(new AllProduceBean(_loc5_));
            }
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
    }

    public var msg:String;

    public var packageId:Number;

    public var allProduceQueueArray:ArrayCollection;

    public var errorMsg:String;

    public var ok:int;
}
}
