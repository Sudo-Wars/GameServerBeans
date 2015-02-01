package com.evony.client.action {
import com.evony.common.module.CommandResponse;
import com.evony.common.module.quest.QuestListResponse;
import com.evony.common.module.quest.QuestRewardRespone;
import com.evony.common.module.quest.QuestTypeResponse;

public class QuestCommands extends Object {

    public static const GET_QUEST_TYPE:String = "quest.getQuestType";
    public static const GET_QUEST_LIST:String = "quest.getQuestList";
    public static const AWARD_PACKET:String = "quest.awardPacket";
    public static const GET_AWARD_ITEMS:String = "quest.getAwardItems";
    public static const ALLOW_REGISTER:String = "quest.AllowRegister";
    public static const AWARD:String = "quest.award";

    public static function awardPacket(param1:int, param2:int, param3:String, param4:Function = null):void {
        CommandFactory.SendCommand(AWARD_PACKET, {
            "castleId": param1,
            "questId": param2,
            "key": param3
        }, CommandResponse, param4);
    }

    public static function getQuestType(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(GET_QUEST_TYPE, {
            "castleId": param1,
            "type": param2
        }, QuestTypeResponse, param3);
    }

    public static function getQuestList(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(GET_QUEST_LIST, {
            "castleId": param1,
            "typeId": param2
        }, QuestListResponse, param3);
    }

    public static function AllowRegister(param1:Function = null):void {
        CommandFactory.SendCommand(ALLOW_REGISTER, {}, CommandResponse, param1);
    }

    public static function getAwardItems(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_AWARD_ITEMS, {"questId": param1}, QuestRewardRespone, param2);
    }

    public static function award(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(AWARD, {
            "castleId": param1,
            "questId": param2
        }, CommandResponse, param3);
    }

    public function QuestCommands() {
        super();
    }
}
}
