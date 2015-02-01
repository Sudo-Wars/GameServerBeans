package com.evony.common.server.events {
import com.evony.common.BaseBean;

public class AllianceChatMsg extends BaseBean {

    public function AllianceChatMsg(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.languageType != null) {
            this.languageType = param2.languageType;
        }
        if (param2.fromUser != null) {
            this.fromUser = param2.fromUser;
        }
        if (param2.ownitemid != null) {
            this.ownitemid = param2.ownitemid;
        }
    }

    public var msg:String;

    public var fromUser:String;

    public var languageType:int;

    public var ownitemid:int;
}
}
