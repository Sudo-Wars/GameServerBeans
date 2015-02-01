package com.evony.common.module.mail {
import com.evony.common.BaseBean;

public class MailResponse extends BaseBean {

    public function MailResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.type_id != null) {
            this.type_id = param2.type_id;
        }
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.targetId != null) {
            this.targetId = param2.targetId;
        }
        if (param2.receiveTime != null) {
            this.receiveTime = param2.receiveTime;
        }
        if (param2.content != null) {
            this.content = param2.content;
        }
        if (param2.mailid != null) {
            this.mailid = param2.mailid;
        }
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
        if (param2.playerId != null) {
            this.playerId = param2.playerId;
        }
        if (param2.title != null) {
            this.title = param2.title;
        }
        if (param2.isRead != null) {
            this.isRead = param2.isRead;
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
        }
        if (param2.receiver != null) {
            this.receiver = param2.receiver;
        }
        if (param2.sender != null) {
            this.sender = param2.sender;
        }
    }

    public var type_id:int;

    public var msg:String;

    public var packageId:Number;

    public var targetId:int;

    public var receiveTime:Number;

    public var content:String;

    public var mailid:int;

    public var errorMsg:String;

    public var ok:int;

    public var title:String;

    public var playerId:int;

    public var isRead:int;

    public var receiver:String;

    public var sender:String;
}
}
