package com.evony.client.action {
import com.evony.common.module.alliance.AllianceFriendshipResponse;
import com.evony.common.module.alliance.AllianceInviteBeanResponse;
import com.evony.common.module.alliance.AllianceInviteOnClientBeanResponse;
import com.evony.common.module.alliance.AllianceManagementResponse;
import com.evony.common.module.alliance.AlliancePowerLevelResponse;
import com.evony.common.module.alliance.AllianceUserAddResponse;
import com.evony.common.module.alliance.HasAllianceResponse;
import com.evony.common.module.alliance.WantedAllianceResponse;

public class AllianceManagementCommands extends Object {

    public static const RESET_TOP_POWER_FOR_ALLIANCE:String = "alliance.resetTopPowerForAlliance";
    public static const SET_ALL_INFO_FOR_ALLIANCE:String = "alliance.setAllInfoForAlliance";
    public static const LEADER_WANT_USER_IN_ALLIANCE_LIST:String = "alliance.leaderWantUserInAllianceList";
    public static const DROP_ALLIANCE_FRIENDSHIP_RELATION:String = "alliance.dropAllianceFriendshipRelation";
    public static const ADD_USERTO_ALLIANCE:String = "alliance.addUsertoAlliance";
    public static const CREATE_ALLIANCE:String = "alliance.createAlliance";
    public static const CANCELAGREE_COMEIN_ALLIANCE:String = "alliance.cancelagreeComeinAlliance";
    public static const MESSAGES_FOR_ALLIANCE_MEMBER:String = "alliance.messagesForAllianceMember";
    public static const ADD_USERTO_ALLIANCE_LIST:String = "alliance.addUsertoAllianceList";
    public static const GET_ALLIANCE_WANTED:String = "alliance.getAllianceWanted";
    public static const SET_POWER_FOR_USER_BY_ALLIANCE:String = "alliance.setPowerForUserByAlliance";
    public static const GET_ALLIANCE_FRIENDSHIP_LIST:String = "alliance.getAllianceFriendshipList";
    public static const KICK_OUT_MEMBERFROM_ALLIANCE:String = "alliance.kickOutMemberfromAlliance";
    public static const GET_POWER_FROM_ALLIANCE:String = "alliance.getPowerFromAlliance";
    public static const AGREE_COMEIN_ALLIANCE_BY_LEADER:String = "alliance.agreeComeinAllianceByLeader";
    public static const AGREE_COMEIN_ALLIANCE_BY_USER:String = "alliance.agreeComeinAllianceByUser";
    public static const CANCEL_USER_WANT_IN_ALLIANCE:String = "alliance.cancelUserWantInAlliance";
    public static const USER_WANT_IN_ALLIANCE:String = "alliance.userWantInAlliance";
    public static const CANCELADD_USERTO_ALLIANCE:String = "alliance.canceladdUsertoAlliance";
    public static const IS_HAS_ALLIANCE:String = "alliance.isHasAlliance";
    public static const SAY_BYETO_ALLIANCE:String = "alliance.sayByetoAlliance";
    public static const AGREE_COMEIN_ALLIANCE_LIST:String = "alliance.agreeComeinAllianceList";
    public static const SET_ALLIANCE_FRIENDSHIP:String = "alliance.setAllianceFriendship";
    public static const REJECT_COMEIN_ALLIANCE:String = "alliance.rejectComeinAlliance";
    public static const RESIGN_FOR_ALLIANCE:String = "alliance.resignForAlliance";

    public static function agreeComeinAllianceList(param1:Function = null):void {
        CommandFactory.SendCommand(AGREE_COMEIN_ALLIANCE_LIST, {}, AllianceUserAddResponse, param1);
    }

    public static function sayByetoAlliance(param1:Function = null):void {
        CommandFactory.SendCommand(SAY_BYETO_ALLIANCE, {}, AllianceManagementResponse, param1);
    }

    public static function resignForAlliance(param1:Function = null):void {
        CommandFactory.SendCommand(RESIGN_FOR_ALLIANCE, {}, AllianceManagementResponse, param1);
    }

    public static function resetTopPowerForAlliance(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(RESET_TOP_POWER_FOR_ALLIANCE, {"userName": param1}, AllianceManagementResponse, param2);
    }

    public static function getAllianceFriendshipList(param1:Function = null):void {
        CommandFactory.SendCommand(GET_ALLIANCE_FRIENDSHIP_LIST, {}, AllianceFriendshipResponse, param1);
    }

    public static function cancelagreeComeinAlliance(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(CANCELAGREE_COMEIN_ALLIANCE, {"userName": param1}, AllianceUserAddResponse, param2);
    }

    public static function canceladdUsertoAlliance(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(CANCELADD_USERTO_ALLIANCE, {"userName": param1}, AllianceInviteBeanResponse, param2);
    }

    public static function agreeComeinAllianceByUser(param1:int, param2:String, param3:Function = null):void {
        CommandFactory.SendCommand(AGREE_COMEIN_ALLIANCE_BY_USER, {
            "castleId": param1,
            "allianceName": param2
        }, AllianceUserAddResponse, param3);
    }

    public static function setAllInfoForAlliance(param1:String, param2:String, param3:String, callback:Function = null):void {
        CommandFactory.SendCommand(SET_ALL_INFO_FOR_ALLIANCE, {
            "allianceName": param1,
            "infoText": param2,
            "noteText": param3
        }, AllianceManagementResponse, callback);
    }

    public static function agreeComeinAllianceByLeader(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(AGREE_COMEIN_ALLIANCE_BY_LEADER, {"userName": param1}, AllianceManagementResponse, param2);
    }

    public static function getAllianceWanted(param1:Function = null):void {
        CommandFactory.SendCommand(GET_ALLIANCE_WANTED, {}, WantedAllianceResponse, param1);
    }

    public static function addUsertoAllianceList(param1:Function = null):void {
        CommandFactory.SendCommand(ADD_USERTO_ALLIANCE_LIST, {}, AllianceInviteBeanResponse, param1);
    }

    public static function setPowerForUserByAlliance(param1:String, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(SET_POWER_FOR_USER_BY_ALLIANCE, {
            "userName": param1,
            "typeId": param2
        }, AllianceManagementResponse, param3);
    }

    public static function createAlliance(param1:int, param2:String, param3:Function = null):void {
        CommandFactory.SendCommand(CREATE_ALLIANCE, {
            "castleId": param1,
            "allianceName": param2
        }, AllianceManagementResponse, param3);
    }

    public static function userWantInAlliance(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(USER_WANT_IN_ALLIANCE, {"allianceName": param1}, AllianceManagementResponse, param2);
    }

    public static function addUsertoAlliance(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(ADD_USERTO_ALLIANCE, {"userName": param1}, AllianceManagementResponse, param2);
    }

    public static function isHasAlliance(param1:Function = null):void {
        CommandFactory.SendCommand(IS_HAS_ALLIANCE, {}, HasAllianceResponse, param1);
    }

    public static function kickOutMemberfromAlliance(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(KICK_OUT_MEMBERFROM_ALLIANCE, {"userName": param1}, AllianceManagementResponse, param2);
    }

    public static function dropAllianceFriendshipRelation(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(DROP_ALLIANCE_FRIENDSHIP_RELATION, {"targetAllianceName": param1}, AllianceFriendshipResponse, param2);
    }

    public static function messagesForAllianceMember(param1:String, param2:String, param3:int, param4:Function = null):void {
        CommandFactory.SendCommand(MESSAGES_FOR_ALLIANCE_MEMBER, {
            "title": param1,
            "message": param2,
            "type": param3
        }, AllianceManagementResponse, param4);
    }

    public static function cancelUserWantInAlliance(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(CANCEL_USER_WANT_IN_ALLIANCE, {"allianceName": param1}, AllianceManagementResponse, param2);
    }

    public static function setAllianceFriendship(param1:String, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(SET_ALLIANCE_FRIENDSHIP, {
            "targetAllianceName": param1,
            "type": param2
        }, AllianceManagementResponse, param3);
    }

    public static function getPowerFromAlliance(param1:Function = null):void {
        CommandFactory.SendCommand(GET_POWER_FROM_ALLIANCE, {}, AlliancePowerLevelResponse, param1);
    }

    public static function leaderWantUserInAllianceList(param1:Function = null):void {
        CommandFactory.SendCommand(LEADER_WANT_USER_IN_ALLIANCE_LIST, {}, AllianceInviteOnClientBeanResponse, param1);
    }

    public static function rejectComeinAlliance(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(REJECT_COMEIN_ALLIANCE, {"allianceName": param1}, AllianceUserAddResponse, param2);
    }

    public function AllianceManagementCommands() {
        super();
    }
}
}
