package com.evony.common.module.tech {
import com.evony.common.BaseBean;
import com.evony.common.beans.AvailableResearchListBean;

public class AvailableResearchListResponse extends BaseBean {

    public function AvailableResearchListResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        var _loc5_:Object = null;
        var _loc6_:AvailableResearchListBean = null;
        this.acailableResearchBeans = new Object();
        super(param1, param2, param3, param4);
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.academyCount != null) {
            this.academyCount = param2.academyCount;
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.acailableResearchBeans) {
            for each(_loc5_ in param2.acailableResearchBeans) {
                _loc6_ = new AvailableResearchListBean(_loc5_);
                this.acailableResearchBeans[_loc6_.typeId] = _loc6_;
            }
        }
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
        }
    }

    public var msg:String;

    public var academyCount:int;

    public var packageId:Number;

    public var acailableResearchBeans:Object;

    public var errorMsg:String;

    public var ok:int;
}
}
