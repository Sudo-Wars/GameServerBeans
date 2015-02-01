package com.evony.common.module.tech {
import com.evony.common.BaseBean;
import com.evony.common.beans.AvailableResearchListBean;

public class ResearchResponse extends BaseBean {

    public function ResearchResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.tech != null) {
            this.tech = new AvailableResearchListBean(param2.tech);
        }
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
        }
    }

    public var errorMsg:String;

    public var msg:String;

    public var ok:int;

    public var tech:AvailableResearchListBean;

    public var packageId:Number;
}
}
