package com.evony.client.action {
import com.evony.common.module.alliance.AllianceArmyResponse;
import com.evony.common.module.alliance.AllianceEventListResponse;
import com.evony.common.module.alliance.AllianceInfoResponse;
import com.evony.common.module.alliance.AllianceListResponse;
import com.evony.common.module.alliance.AllianceMembersResponse;
import com.evony.common.module.alliance.MilitarySituationListResponse;

public class AllianceCommands extends Object {

    public static const GET_MILITARY_SITUATION_LIST:String = "alliance.getMilitarySituationList";
    public static const GET_ALLIANCE_EVENT_LIST:String = "alliance.getAllianceEventList";
    public static const GET_ALLIANCE_INFO:String = "alliance.getAllianceInfo";
    public static const GET_ALLIANCE_ARMY_REPORT:String = "alliance.getAllianceArmyReport";
    public static const GET_ALLIANCE_MEMBERS:String = "alliance.getAllianceMembers";
    public static const GET_ALLIANCE_LIST:String = "alliance.getAllianceList";

    public static function getAllianceEventList(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_ALLIANCE_EVENT_LIST, {"pageNo": param1}, AllianceEventListResponse, param2);
    }

    public static function getAllianceList(param1:int, param2:int, param3:int, param4:String, param5:Function = null):void {
        CommandFactory.SendCommand(GET_ALLIANCE_LIST, {
            "pageSize": param1,
            "pageNum": param2,
            "ranking": param3,
            "name": param4
        }, AllianceListResponse, param5);
    }

    public static function getAllianceMembers(param1:Function = null):void {
        CommandFactory.SendCommand(GET_ALLIANCE_MEMBERS, {}, AllianceMembersResponse, param1);
    }

    public static function getMilitarySituationList(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(GET_MILITARY_SITUATION_LIST, {
            "pageNo": param1,
            "pageSize": param2
        }, MilitarySituationListResponse, param3);
    }

    public static function getAllianceInfo(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(GET_ALLIANCE_INFO, {"allianceName": param1}, AllianceInfoResponse, param2);
    }

    public static function getAllianceArmyReport(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_ALLIANCE_ARMY_REPORT, {"armyId": param1}, AllianceArmyResponse, param2);
    }

    public function AllianceCommands() {
        super();
    }
}
}
