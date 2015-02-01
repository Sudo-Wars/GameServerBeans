package com.evony.client.action {
import com.evony.common.module.CommandResponse;
import com.evony.common.module.mail.MailListResponse;
import com.evony.common.module.mail.MailResponse;
import com.evony.common.module.mail.TVResponse;

public class MailCommands extends Object {

    public static const READ_MAIL:String = "mail.readMail";
    public static const READ_OVER_MAIL_LIST:String = "mail.readOverMailList";
    public static const GET_ALL_T_V_MSG:String = "mail.getAllTVMsg";
    public static const REPORT_BUG:String = "mail.reportBug";
    public static const RECEIVE_MAIL_LIST:String = "mail.receiveMailList";
    public static const DELETE_MAIL:String = "mail.deleteMail";
    public static const SEND_MAIL:String = "mail.sendMail";
    public static const REPORT_PLAYER:String = "mail.reportPlayer";

    public static function readMail(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(READ_MAIL, {"mailId": param1}, MailResponse, param2);
    }

    public static function reportBug(param1:String, param2:String, param3:Function = null):void {
        CommandFactory.SendCommand(REPORT_BUG, {
            "subject": param1,
            "content": param2
        }, CommandResponse, param3);
    }

    public static function receiveMailList(param1:int, param2:int, param3:int, param4:Function = null):void {
        CommandFactory.SendCommand(RECEIVE_MAIL_LIST, {
            "pageNo": param1,
            "type": param2,
            "pageSize": param3
        }, MailListResponse, param4);
    }

    public static function deleteMail(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(DELETE_MAIL, {"str_mailid": param1}, CommandResponse, param2);
    }

    public static function reportPlayer(param1:String, param2:String, param3:Function = null):void {
        CommandFactory.SendCommand(REPORT_PLAYER, {
            "subject": param1,
            "content": param2
        }, CommandResponse, param3);
    }

    public static function sendMail(param1:String, param2:String, param3:String, param4:Function = null):void {
        CommandFactory.SendCommand(SEND_MAIL, {
            "username": param1,
            "title": param2,
            "content": param3
        }, CommandResponse, param4);
    }

    public static function getAllTVMsg(param1:Function = null):void {
        CommandFactory.SendCommand(GET_ALL_T_V_MSG, {}, TVResponse, param1);
    }

    public static function readOverMailList(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(READ_OVER_MAIL_LIST, {"mailIds": param1}, MailResponse, param2);
    }

    public function MailCommands() {
        super();
    }
}
}
