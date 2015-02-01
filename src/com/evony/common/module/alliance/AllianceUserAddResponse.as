package com.evony.common.module.alliance {
import com.evony.common.BaseBean;
import com.evony.common.beans.AllianceAddPlayerByUserInfoBean;

import mx.collections.ArrayCollection;

public class AllianceUserAddResponse extends BaseBean {

    public function AllianceUserAddResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        var _loc5_:Object = null;
        this.allianceAddPlayerByUserInfoBeanListArray = new ArrayCollection();
        super(param1, param2, param3, param4);
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.allianceAddPlayerByUserInfoBeanList) {
            for each(_loc5_ in param2.allianceAddPlayerByUserInfoBeanList) {
                this.allianceAddPlayerByUserInfoBeanListArray.addItem(new AllianceAddPlayerByUserInfoBean(_loc5_));
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

    public var allianceAddPlayerByUserInfoBeanListArray:ArrayCollection;

    public var packageId:Number;

    public var errorMsg:String;

    public var ok:int;
}
}
