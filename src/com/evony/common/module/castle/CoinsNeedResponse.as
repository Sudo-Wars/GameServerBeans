package com.evony.common.module.castle {
import com.evony.common.BaseBean;

public class CoinsNeedResponse extends BaseBean {

    public function CoinsNeedResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.coinsNeed != null) {
            this.coinsNeed = param2.coinsNeed;
        }
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
        }
    }

    public var packageId:Number;

    public var msg:String;

    public var errorMsg:String;

    public var ok:int;

    public var coinsNeed:int;
}
}
