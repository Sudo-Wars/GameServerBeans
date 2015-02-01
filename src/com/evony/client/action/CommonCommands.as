package com.evony.client.action {
import com.evony.common.module.CommandResponse;
import com.evony.common.module.alliance.PlayerInfoResponse;
import com.evony.common.module.common.ChangeNameResponse;
import com.evony.common.module.common.ChangeUserFaceResponse;
import com.evony.common.module.common.ChatResponse;
import com.evony.common.module.common.CreatePlayerResponse;
import com.evony.common.module.common.GetItemDefResponse;
import com.evony.common.module.common.GetOnlineBonusResponse;
import com.evony.common.module.common.GetPackageListResponse;
import com.evony.common.module.common.GetPackageNumberResponse;
import com.evony.common.module.common.GetPackageResponse;
import com.evony.common.module.common.MapCastleResponse;
import com.evony.common.module.common.MapInfoResponse;
import com.evony.common.module.common.MapInfoSimpleResponse;
import com.evony.common.module.common.ZoneInfoResponse;

public class CommonCommands extends Object {

    public static const GET_PACKAGE_LIST:String = "common.getPackageList";
    public static const CHANGE_USER_FACE:String = "common.changeUserFace";
    public static const ZONE_INFO:String = "common.zoneInfo";
    public static const WORLD_CHAT:String = "common.worldChat";
    public static const DELETE_USER_AND_RESTART:String = "common.deleteUserAndRestart";
    public static const GET_PACKAGE:String = "common.getPackage";
    public static const CREATE_NEW_PLAYER:String = "common.createNewPlayer";
    public static const DENY_PLAYER_SPEAK:String = "common.denyPlayerSpeak";
    public static const GET_PACKAGE_NUMBER:String = "common.getPackageNumber";
    public static const DEL_UNITE_SERVER_PEACE_STATUS:String = "common.delUniteServerPeaceStatus";
    public static const CHANNEL_CHAT:String = "common.channelChat";
    public static const CANCEL_ONLINE_BONUS:String = "common.cancelOnlineBonus";
    public static const CHANGE_NAME:String = "common.changeName";
    public static const PRIVATE_CHAT:String = "common.privateChat";
    public static const STEP:String = "common.step";
    public static const MAP_INFO:String = "common.mapInfo";
    public static const GET_ITEM_DEF_XML:String = "common.getItemDefXml";
    public static const MAP_CASTLE:String = "common.mapCastle";
    public static const REFRESH_CAPTCHA:String = "common.refreshCaptcha";
    public static const MAP_INFO_SIMPLE:String = "common.mapInfoSimple";
    public static const ALLIANCE_CHAT:String = "common.allianceChat";
    public static const GET_PLAYER_INFO_BY_NAME:String = "common.getPlayerInfoByName";
    public static const CB_U_D:String = "common.CbUD";
    public static const GET_ONLINE_BONUS:String = "common.getOnlineBonus";

    public static function zoneInfo(param1:Function = null):void {
        CommandFactory.SendCommand(ZONE_INFO, {}, ZoneInfoResponse, param1);
    }

    public static function mapInfoSimple(param1:int, param2:int, param3:int, param4:int, param5:Function = null):void {
        CommandFactory.SendCommand(MAP_INFO_SIMPLE, {
            "x1": param1,
            "y1": param2,
            "x2": param3,
            "y2": param4
        }, MapInfoSimpleResponse, param5);
    }

    public static function createNewPlayer(param1:String, param2:int, param3:String, param4:String, param5:String, param6:int, param7:String, param8:Function = null):void {
        CommandFactory.SendCommand(CREATE_NEW_PLAYER, {
            "userName": param1,
            "sex": param2,
            "faceUrl": param3,
            "flag": param4,
            "castleName": param5,
            "zone": param6,
            "captcha": param7
        }, CreatePlayerResponse, param8);
    }

    public static function getPackage(param1:int, param2:String, param3:Function = null):void {
        CommandFactory.SendCommand(GET_PACKAGE, {
            "ruleId": param1,
            "serial": param2
        }, GetPackageResponse, param3);
    }

    public static function worldChat(param1:String, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(WORLD_CHAT, {
            "msg": param1,
            "languageType": param2
        }, ChatResponse, param3);
    }

    public static function privateChat(param1:String, param2:String, param3:Function = null):void {
        CommandFactory.SendCommand(PRIVATE_CHAT, {
            "targetName": param1,
            "msg": param2
        }, ChatResponse, param3);
    }

    public static function getPlayerInfoByName(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(GET_PLAYER_INFO_BY_NAME, {"userName": param1}, PlayerInfoResponse, param2);
    }

    public static function mapCastle(param1:int, param2:int, param3:int, param4:int, param5:Function = null):void {
        CommandFactory.SendCommand(MAP_CASTLE, {
            "x1": param1,
            "y1": param2,
            "x2": param3,
            "y2": param4
        }, MapCastleResponse, param5);
    }

    public static function refreshCaptcha(param1:Function = null):void {
        CommandFactory.SendCommand(REFRESH_CAPTCHA, {}, GetOnlineBonusResponse, param1);
    }

    public static function channelChat(param1:String, param2:String, param3:int, param4:Function = null):void {
        CommandFactory.SendCommand(CHANNEL_CHAT, {
            "channel": param1,
            "sendMsg": param2,
            "languageType": param3
        }, ChatResponse, param4);
    }

    public static function mapInfo(param1:int, param2:int, param3:int, param4:int, param5:Function = null):void {
        CommandFactory.SendCommand(MAP_INFO, {
            "x1": param1,
            "y1": param2,
            "x2": param3,
            "y2": param4
        }, MapInfoResponse, param5);
    }

    public static function allianceChat(param1:String, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(ALLIANCE_CHAT, {
            "msg": param1,
            "languageType": param2
        }, ChatResponse, param3);
    }

    public static function changeUserFace(param1:String, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(CHANGE_USER_FACE, {
            "faceUrl": param1,
            "sex": param2
        }, ChangeUserFaceResponse, param3);
    }

    public static function cancelOnlineBonus(param1:Function = null):void {
        CommandFactory.SendCommand(CANCEL_ONLINE_BONUS, {}, CommandResponse, param1);
    }

    public static function denyPlayerSpeak(param1:String, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(DENY_PLAYER_SPEAK, {
            "playername": param1,
            "time": param2
        }, CommandResponse, param3);
    }

    public static function getItemDefXml(param1:Function = null):void {
        CommandFactory.SendCommand(GET_ITEM_DEF_XML, {}, GetItemDefResponse, param1);
    }

    public static function step(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(STEP, {"tutorialStepId": param1}, CommandResponse, param2);
    }

    public static function CbUD(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(CB_U_D, {"text": param1}, CommandResponse, param2);
    }

    public static function delUniteServerPeaceStatus(param1:Function = null):void {
        CommandFactory.SendCommand(DEL_UNITE_SERVER_PEACE_STATUS, {}, CommandResponse, param1);
    }

    public static function changeName(param1:int, param2:String, param3:String, param4:Function = null):void {
        CommandFactory.SendCommand(CHANGE_NAME, {
            "type": param1,
            "nowName": param2,
            "newName": param3
        }, ChangeNameResponse, param4);
    }

    public static function getOnlineBonus(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(GET_ONLINE_BONUS, {"captcha": param1}, GetOnlineBonusResponse, param2);
    }

    public static function getPackageList(param1:Function = null):void {
        CommandFactory.SendCommand(GET_PACKAGE_LIST, {}, GetPackageListResponse, param1);
    }

    public static function deleteUserAndRestart(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(DELETE_USER_AND_RESTART, {"pwd": param1}, CommandResponse, param2);
    }

    public static function getPackageNumber(param1:Function = null):void {
        CommandFactory.SendCommand(GET_PACKAGE_NUMBER, {}, GetPackageNumberResponse, param1);
    }

    public function CommonCommands() {
        super();
    }
}
}
