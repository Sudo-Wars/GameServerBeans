package com.evony.common.module.mail {
import com.evony.common.BaseBean;
import com.evony.common.beans.TVmsgBean;

import mx.collections.ArrayCollection;

public class TVResponse extends BaseBean {

    public function TVResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        var _loc5_:Object = null;
        this.tvBeansArray = new ArrayCollection();
        super(param1, param2, param3, param4);
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
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
        if (param2.tvBeans) {
            for each(_loc5_ in param2.tvBeans) {
                this.tvBeansArray.addItem(new TVmsgBean(_loc5_));
            }
        }
    }

    public var msg:String;

    public var tvBeansArray:ArrayCollection;

    public var packageId:Number;

    public var errorMsg:String;

    public var ok:int;
}
}
