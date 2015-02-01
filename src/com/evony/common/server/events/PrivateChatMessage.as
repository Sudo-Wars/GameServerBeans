package com.evony.common.server.events {
import com.evony.common.BaseBean;

public class PrivateChatMessage extends BaseBean {

    public static const NORMAL_CHAT:int = 0;
    public static const GM_CHAT:int = 1;

    public function PrivateChatMessage(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.chatType != null) {
            this.chatType = param2.chatType;
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

    public var chatType:int;

    public var ownitemid:int;
}
}
