package com.evony.client.action {
import com.evony.common.module.CommandResponse;
import com.evony.common.module.hero.HeroListResponse;

public class HeroCommand extends Object {

    public static const USE_ITEM:String = "hero.useItem";
    public static const AWARD_GOLD:String = "hero.awardGold";
    public static const DISCHARGE_CHIEF:String = "hero.dischargeChief";
    public static const TRY_GET_SEIZED_HERO:String = "hero.tryGetSeizedHero";
    public static const RELEASE_HERO:String = "hero.releaseHero";
    public static const LEVEL_UP:String = "hero.levelUp";
    public static const REFRESH_HEROS_LIST_FROM_TAVERN:String = "hero.refreshHerosListFromTavern";
    public static const RESET_POINT:String = "hero.resetPoint";
    public static const FIRE_HERO:String = "hero.fireHero";
    public static const HIRE_HERO:String = "hero.hireHero";
    public static const PROMOTE_TO_CHIEF:String = "hero.promoteToChief";
    public static const CALL_BACK_HERO:String = "hero.callBackHero";
    public static const ADD_POINT:String = "hero.addPoint";
    public static const CHANGE_NAME:String = "hero.changeName";
    public static const GET_HEROS_LIST_FROM_TAVERN:String = "hero.getHerosListFromTavern";

    public static function resetPoint(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(RESET_POINT, {
            "castleId": param1,
            "heroId": param2
        }, CommandResponse, param3);
    }

    public static function dischargeChief(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(DISCHARGE_CHIEF, {"castleId": param1}, CommandResponse, param2);
    }

    public static function useItem(param1:int, param2:int, param3:String, param4:Function = null):void {
        CommandFactory.SendCommand(USE_ITEM, {
            "castleId": param1,
            "heroId": param2,
            "itemId": param3
        }, CommandResponse, param4);
    }

    public static function hireHero(param1:int, param2:String, param3:Function = null):void {
        CommandFactory.SendCommand(HIRE_HERO, {
            "castleId": param1,
            "heroName": param2
        }, CommandResponse, param3);
    }

    public static function fireHero(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(FIRE_HERO, {
            "castleId": param1,
            "heroId": param2
        }, CommandResponse, param3);
    }

    public static function getHerosListFromTavern(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_HEROS_LIST_FROM_TAVERN, {"castleId": param1}, HeroListResponse, param2);
    }

    public static function refreshHerosListFromTavern(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(REFRESH_HEROS_LIST_FROM_TAVERN, {"castleId": param1}, HeroListResponse, param2);
    }

    public static function releaseHero(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(RELEASE_HERO, {
            "castleId": param1,
            "heroId": param2
        }, CommandResponse, param3);
    }

    public static function changeName(param1:int, param2:int, param3:String, param4:Function = null):void {
        CommandFactory.SendCommand(CHANGE_NAME, {
            "castleId": param1,
            "heroId": param2,
            "newName": param3
        }, CommandResponse, param4);
    }

    public static function addPoint(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Function = null):void {
        CommandFactory.SendCommand(ADD_POINT, {
            "castleId": param1,
            "heroId": param2,
            "management": param3,
            "power": param4,
            "stratagem": param5
        }, CommandResponse, param6);
    }

    public static function awardGold(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(AWARD_GOLD, {
            "castleId": param1,
            "heroId": param2
        }, CommandResponse, param3);
    }

    public static function tryGetSeizedHero(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(TRY_GET_SEIZED_HERO, {
            "castleId": param1,
            "heroId": param2
        }, CommandResponse, param3);
    }

    public static function levelUp(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(LEVEL_UP, {
            "castleId": param1,
            "heroId": param2
        }, CommandResponse, param3);
    }

    public static function promoteToChief(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(PROMOTE_TO_CHIEF, {
            "castleId": param1,
            "heroId": param2
        }, CommandResponse, param3);
    }

    public static function callBackHero(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(CALL_BACK_HERO, {
            "castleId": param1,
            "heroId": param2
        }, CommandResponse, param3);
    }

    public function HeroCommand() {
        super();
    }
}
}
