package com.evony.common.server.events {
import com.evony.common.BaseBean;

public class SystemInfoMsg extends BaseBean {

    public function SystemInfoMsg(param1:String, infoMsg:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, infoMsg, param3, param4);
        if (infoMsg.msg != null) {
            this.msg = infoMsg.msg;
        }
        if (infoMsg.tV != null) {
            this.tV = infoMsg.tV;
        }
        if (infoMsg.noSenderSystemInfo != null) {
            this.noSenderSystemInfo = infoMsg.noSenderSystemInfo;
        }
        if (infoMsg.tVContext != null) {
            this.tVContext = infoMsg.tVContext;
        }
        if (infoMsg.sender != null) {
            this.sender = infoMsg.sender;
        }
        if (infoMsg.alliance != null) {
            this.alliance = infoMsg.alliance;
        }
    }

    public var msg:String;

    public var tV:Boolean;

    public var tVContext:String;

    public var noSenderSystemInfo:Boolean;

    public var sender:String;

    public var alliance:Boolean;
}
}
