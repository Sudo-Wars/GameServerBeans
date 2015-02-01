package com.evony.client.action {
import com.evony.common.module.CommandResponse;
import com.evony.common.module.city.StoreListResponse;

public class CityCommands extends Object {

    public static const CONSTRUCT_CASTLE:String = "city.constructCastle";
    public static const ADV_MOVE_CASTLE:String = "city.advMoveCastle";
    public static const GET_STORE_LIST:String = "city.getStoreList";
    public static const MODIFY_FLAG:String = "city.modifyFlag";
    public static const SET_STOP_WAR_STATE:String = "city.setStopWarState";
    public static const MODIFY_STORE_PERCENT:String = "city.modifyStorePercent";
    public static const MOVE_CASTLE:String = "city.moveCastle";
    public static const GIVEUP_CASTLE:String = "city.giveupCastle";
    public static const MODIFY_CASTLE_NAME:String = "city.modifyCastleName";
    public static const WAR_MOVE_CASTLE:String = "city.WarMoveCastle";
    public static const MODIFY_USER_NAME:String = "city.modifyUserName";
    public static const UNITE_ADV_MOVE_CASTLE:String = "city.uniteAdvMoveCastle";

    public static function modifyFlag(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(MODIFY_FLAG, {"newFlag": param1}, CommandResponse, param2);
    }

    public static function giveupCastle(param1:String, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(GIVEUP_CASTLE, {
            "password": param1,
            "castleId": param2
        }, CommandResponse, param3);
    }

    public static function setStopWarState(param1:String, param2:String, param3:Function = null):void {
        CommandFactory.SendCommand(SET_STOP_WAR_STATE, {
            "ItemId": param1,
            "passWord": param2
        }, CommandResponse, param3);
    }

    public static function modifyUserName(param1:String, param2:String, param3:Function = null):void {
        CommandFactory.SendCommand(MODIFY_USER_NAME, {
            "userName": param1,
            "itemId": param2
        }, CommandResponse, param3);
    }

    public static function advMoveCastle(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(ADV_MOVE_CASTLE, {
            "castleId": param1,
            "targetId": param2
        }, CommandResponse, param3);
    }

    public static function modifyCastleName(param1:int, param2:String, param3:String, param4:Function = null):void {
        CommandFactory.SendCommand(MODIFY_CASTLE_NAME, {
            "castleId": param1,
            "name": param2,
            "logUrl": param3
        }, CommandResponse, param4);
    }

    public static function WarMoveCastle(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(WAR_MOVE_CASTLE, {
            "castleId": param1,
            "targetId": param2
        }, CommandResponse, param3);
    }

    public static function uniteAdvMoveCastle(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(UNITE_ADV_MOVE_CASTLE, {
            "castleId": param1,
            "targetId": param2
        }, CommandResponse, param3);
    }

    public static function getStoreList(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_STORE_LIST, {"castleId": param1}, StoreListResponse, param2);
    }

    public static function constructCastle(param1:int, param2:int, param3:Boolean, param4:Function = null):void {
        CommandFactory.SendCommand(CONSTRUCT_CASTLE, {
            "castleId": param1,
            "fieldId": param2,
            "isTroopBack": param3
        }, CommandResponse, param4);
    }

    public static function moveCastle(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(MOVE_CASTLE, {
            "castleId": param1,
            "zoneId": param2
        }, CommandResponse, param3);
    }

    public static function modifyStorePercent(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Function = null):void {
        CommandFactory.SendCommand(MODIFY_STORE_PERCENT, {
            "castleId": param1,
            "foodrate": param2,
            "woodrate": param3,
            "stonerate": param4,
            "ironrate": param5
        }, CommandResponse, param6);
    }

    public function CityCommands() {
        super();
    }
}
}
