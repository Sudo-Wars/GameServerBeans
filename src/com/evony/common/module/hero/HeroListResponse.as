package com.evony.common.module.hero {
import com.evony.common.BaseBean;
import com.evony.common.beans.HeroBean;

import mx.collections.ArrayCollection;

public class HeroListResponse extends BaseBean {

    public function HeroListResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        var _loc5_:Object = null;
        this.herosArray = new ArrayCollection();
        super(param1, param2, param3, param4);
        if (param2.heros) {
            for each(_loc5_ in param2.heros) {
                this.herosArray.addItem(new HeroBean(_loc5_));
            }
        }
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
        if (param2.posCount != null) {
            this.posCount = param2.posCount;
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
        }
    }

    public var herosArray:ArrayCollection;

    public var packageId:Number;

    public var msg:String;

    public var errorMsg:String;

    public var posCount:int;

    public var ok:int;
}
}
