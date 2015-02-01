package com.evony.common.server.events {
import com.evony.common.BaseBean;

public class ChangeName extends BaseBean {

    public function ChangeName(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.changeType != null) {
            this.changeType = param2.changeType;
        }
        if (param2.nowName != null) {
            this.nowName = param2.nowName;
        }
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
        }
    }

    public var nowName:String;

    public var msg:String;

    public var changeType:int;

    public var packageId:Number;

    public var errorMsg:String;

    public var ok:int;
}
}
