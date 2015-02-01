package com.evony.common.module.alliance {
import com.evony.common.BaseBean;

public class AllianceManagementResponse extends BaseBean {

    public function AllianceManagementResponse(param1:String, response:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, response, param3, param4);
        if (response.packageId != null) {
            this.packageId = response.packageId;
        }
        if (response.msg != null) {
            this.msg = response.msg;
        }
        if (response.waitIntoAllianceName != null) {
            this.waitIntoAllianceName = response.waitIntoAllianceName;
        }
        if (response.errorMsg != null) {
            this.errorMsg = response.errorMsg;
        }
        if (response.ok != null) {
            this.ok = response.ok;
        }
    }

    public var errorMsg:String;

    public var msg:String;

    public var waitIntoAllianceName:String;

    public var packageId:Number;

    public var ok:int;
}
}
