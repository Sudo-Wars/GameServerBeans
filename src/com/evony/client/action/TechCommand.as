package com.evony.client.action {
import com.evony.common.module.CommandResponse;
import com.evony.common.module.castle.CoinsNeedResponse;
import com.evony.common.module.tech.AvailableResearchListResponse;
import com.evony.common.module.tech.ResearchResponse;

public class TechCommand extends Object {

    public static const CANCEL_RESEARCH:String = "tech.cancelResearch";
    public static const GET_RESEARCH_LIST:String = "tech.getResearchList";
    public static const RESEARCH:String = "tech.research";
    public static const GET_COINS_NEED:String = "tech.getCoinsNeed";
    public static const SPEED_UP_RESEARCH:String = "tech.speedUpResearch";

    public static function getCoinsNeed(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_COINS_NEED, {"castleId": param1}, CoinsNeedResponse, param2);
    }

    public static function research(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(RESEARCH, {
            "castleId": param1,
            "techId": param2
        }, ResearchResponse, param3);
    }

    public static function getResearchList(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_RESEARCH_LIST, {"castleId": param1}, AvailableResearchListResponse, param2);
    }

    public static function cancelResearch(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(CANCEL_RESEARCH, {"castleId": param1}, CommandResponse, param2);
    }

    public static function speedUpResearch(param1:int, param2:String, param3:Function = null):void {
        CommandFactory.SendCommand(SPEED_UP_RESEARCH, {
            "castleId": param1,
            "itemId": param2
        }, ResearchResponse, param3);
    }

    public function TechCommand() {
        super();
    }
}
}
