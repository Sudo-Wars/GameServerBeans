package com.evony.common.module.alliance {
import com.evony.common.BaseBean;
import com.evony.common.beans.AllianceEvent;

import mx.collections.ArrayCollection;

public class AllianceEventListResponse extends BaseBean {

    public function AllianceEventListResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        var _loc5_:Object = null;
        this.eventsArray = new ArrayCollection();
        super(param1, param2, param3, param4);
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.events) {
            for each(_loc5_ in param2.events) {
                this.eventsArray.addItem(new AllianceEvent(_loc5_));
            }
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.pageNo != null) {
            this.pageNo = param2.pageNo;
        }
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
        if (param2.totalPage != null) {
            this.totalPage = param2.totalPage;
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
        }
    }

    public var eventsArray:ArrayCollection;

    public var packageId:Number;

    public var msg:String;

    public var pageNo:int;

    public var totalPage:int;

    public var errorMsg:String;

    public var ok:int;
}
}
