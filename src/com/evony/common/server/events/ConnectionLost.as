package com.evony.common.server.events {
import com.evony.common.BaseBean;

public class ConnectionLost extends BaseBean {

    public static const KICK_BY_OTHER:int = 3;
    public static const SERVER_START:int = 1;
    public static const SERVER_MAINTAIN:int = 4;
    public static const SERVER_SHUTDOWN:int = 2;
    public static const ILLEGAL_NAME:int = 5;
    public static const KICK_BY_SERVER:int = 0;

    public function ConnectionLost(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.reasonCode != null) {
            this.reasonCode = param2.reasonCode;
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
    }

    public var msg:String;

    public var reasonCode:int;
}
}
