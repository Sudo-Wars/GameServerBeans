package com.evony.client.action {
import com.evony.common.module.CommandResponse;
import com.evony.common.module.fortifications.FortProduceListResponse;
import com.evony.common.module.troop.ProduceQueueResponse;

public class FortificationsCommands extends Object {

    public static const DESTRUCT_WALL_PROTECT:String = "fortifications.destructWallProtect";
    public static const GET_PRODUCE_QUEUE:String = "fortifications.getProduceQueue";
    public static const CANCEL_FORTIFICATION_PRODUCE:String = "fortifications.cancelFortificationProduce";
    public static const GET_FORTIFICATIONS_PRODUCE_LIST:String = "fortifications.getFortificationsProduceList";
    public static const ACC_TROOP_PRODUCE:String = "fortifications.accTroopProduce";
    public static const PRODUCE_WALL_PROTECT:String = "fortifications.produceWallProtect";

    public static function produceWallProtect(param1:int, param2:int, param3:int, param4:Function = null):void {
        CommandFactory.SendCommand(PRODUCE_WALL_PROTECT, {
            "castleId": param1,
            "wallProtectType": param2,
            "num": param3
        }, CommandResponse, param4);
    }

    public static function cancelFortificationProduce(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(CANCEL_FORTIFICATION_PRODUCE, {
            "castleId": param1,
            "queueId": param2
        }, CommandResponse, param3);
    }

    public static function getFortificationsProduceList(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_FORTIFICATIONS_PRODUCE_LIST, {"castleId": param1}, FortProduceListResponse, param2);
    }

    public static function getProduceQueue(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_PRODUCE_QUEUE, {"castleId": param1}, ProduceQueueResponse, param2);
    }

    public static function accTroopProduce(param1:int, param2:int, param3:String, param4:Function = null):void {
        CommandFactory.SendCommand(ACC_TROOP_PRODUCE, {
            "castleId": param1,
            "queueId": param2,
            "itemId": param3
        }, CommandResponse, param4);
    }

    public static function destructWallProtect(param1:int, param2:int, param3:int, param4:Function = null):void {
        CommandFactory.SendCommand(DESTRUCT_WALL_PROTECT, {
            "castleId": param1,
            "typeId": param2,
            "num": param3
        }, CommandResponse, param4);
    }

    public function FortificationsCommands() {
        super();
    }
}
}
