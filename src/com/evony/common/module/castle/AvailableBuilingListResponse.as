package com.evony.common.module.castle {
import com.evony.common.BaseBean;
import com.evony.common.beans.AvailableBuildingListBean;

import mx.collections.ArrayCollection;

public class AvailableBuilingListResponse extends BaseBean {

    public function AvailableBuilingListResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        var _loc5_:Object = null;
        this.builingListArray = new ArrayCollection();
        super(param1, param2, param3, param4);
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.builingList) {
            for each(_loc5_ in param2.builingList) {
                this.builingListArray.addItem(new AvailableBuildingListBean(_loc5_));
            }
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

    public var packageId:Number;

    public var ok:int;

    public var builingListArray:ArrayCollection;
}
}
