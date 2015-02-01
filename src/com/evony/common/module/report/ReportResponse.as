package com.evony.common.module.report {
import com.evony.common.BaseBean;
import com.evony.common.beans.ReportBean;

public class ReportResponse extends BaseBean {

    public function ReportResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.report != null) {
            this.report = new ReportBean(param2.report);
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

    public var report:ReportBean;

    public var packageId:Number;

    public var ok:int;
}
}
