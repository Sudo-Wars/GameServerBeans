package com.evony.common.module.field {
import com.evony.common.BaseBean;
import com.evony.common.beans.MapCastleBean;

public class OtherFieldInfoResponse extends BaseBean {

    public function OtherFieldInfoResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.bean != null) {
            this.bean = new MapCastleBean(param2.bean);
        }
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
        }
    }

    public var packageId:Number;

    public var bean:MapCastleBean;

    public var msg:String;

    public var errorMsg:String;

    public var ok:int;
}
}
