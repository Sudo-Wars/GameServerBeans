package com.evony.common.module.common {
import com.evony.common.BaseBean;
import com.evony.common.beans.PackageBean;

import mx.collections.ArrayCollection;

public class GetPackageListResponse extends BaseBean {

    public function GetPackageListResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        var _loc5_:Object = null;
        this.packagesArray = new ArrayCollection();
        super(param1, param2, param3, param4);
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.packages) {
            for each(_loc5_ in param2.packages) {
                this.packagesArray.addItem(new PackageBean(_loc5_));
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

    public var ok:int;

    public var packageId:Number;

    public var packagesArray:ArrayCollection;
}
}
