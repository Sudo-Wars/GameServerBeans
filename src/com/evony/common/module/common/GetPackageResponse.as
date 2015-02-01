package com.evony.common.module.common {
import com.evony.common.BaseBean;

public class GetPackageResponse extends BaseBean {

    public static const ERROR_PACKAGE_EXPIRED:int = -3;
    public static const ERROR_REQUIRMENT_NOT_MET:int = -2;
    public static const ERROR_PACKAGE_NOT_EXISTS:int = -1;

    public function GetPackageResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
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
    }

    public var msg:String;

    public var packageId:Number;

    public var errorMsg:String;

    public var ok:int;
}
}
