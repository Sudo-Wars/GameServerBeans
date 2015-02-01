package com.evony.client.action {
import com.evony.common.beans.TroopBean;
import com.evony.common.module.CommandResponse;
import com.evony.common.module.army.ArmyPracticeResponse;
import com.evony.common.module.army.StayAllianceReponse;
import com.evony.common.module.army.TroopParamResponse;
import com.evony.common.paramBeans.NewArmyParam;

public class ArmyCommands extends Object {

    public static const NEW_ARMY:String = "army.newArmy";
    public static const SET_ALLOW_ALLIANCE_ARMY:String = "army.setAllowAllianceArmy";
    public static const CALL_BACK_ARMY:String = "army.callBackArmy";
    public static const GET_TROOP_PARAM:String = "army.getTroopParam";
    public static const DISBAND_INJURED_TROOP:String = "army.disbandInjuredTroop";
    public static const CURE_INJURED_TROOP:String = "army.cureInjuredTroop";
    public static const IS_DROP_ITEM_IN_CASTLE:String = "army.IsDropItemInCastle";
    public static const EXERCISE_ARMY:String = "army.exerciseArmy";
    public static const GET_INJURED_TROOP:String = "army.getInjuredTroop";
    public static const GET_STAY_ALLIANCE_ARMYS:String = "army.getStayAllianceArmys";
    public static const SET_ARMY_GO_OUT:String = "army.setArmyGoOut";

    public static function IsDropItemInCastle(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(IS_DROP_ITEM_IN_CASTLE, {
            "x": param1,
            "y": param2
        }, CommandResponse, param3);
    }

    public static function getTroopParam(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_TROOP_PARAM, {"castleId": param1}, TroopParamResponse, param2);
    }

    public static function exerciseArmy(param1:int, param2:TroopBean, param3:TroopBean, param4:Function = null):void {
        CommandFactory.SendCommand(EXERCISE_ARMY, {
            "castleId": param1,
            "troopParamAttack": param2.toObject(),
            "troopParamDefend": param3.toObject()
        }, ArmyPracticeResponse, param4);
    }

    public static function disbandInjuredTroop(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(DISBAND_INJURED_TROOP, {"castleId": param1}, CommandResponse, param2);
    }

    public static function getInjuredTroop(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_INJURED_TROOP, {"castleId": param1}, CommandResponse, param2);
    }

    public static function callBackArmy(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(CALL_BACK_ARMY, {
            "castleId": param1,
            "armyId": param2
        }, CommandResponse, param3);
    }

    public static function setAllowAllianceArmy(param1:int, param2:Boolean, param3:Function = null):void {
        CommandFactory.SendCommand(SET_ALLOW_ALLIANCE_ARMY, {
            "castleId": param1,
            "isAllow": param2
        }, CommandResponse, param3);
    }

    public static function newArmy(param1:int, param2:NewArmyParam, param3:Function = null):void {
        CommandFactory.SendCommand(NEW_ARMY, {
            "castleId": param1,
            "newArmyBean": param2.toObject()
        }, CommandResponse, param3);
    }

    public static function setArmyGoOut(param1:int, param2:Boolean, param3:Function = null):void {
        CommandFactory.SendCommand(SET_ARMY_GO_OUT, {
            "castleId": param1,
            "isArmyGoOut": param2
        }, CommandResponse, param3);
    }

    public static function getStayAllianceArmys(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_STAY_ALLIANCE_ARMYS, {"castleId": param1}, StayAllianceReponse, param2);
    }

    public static function cureInjuredTroop(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(CURE_INJURED_TROOP, {"castleId": param1}, CommandResponse, param2);
    }

    public function ArmyCommands() {
        super();
    }
}
}
