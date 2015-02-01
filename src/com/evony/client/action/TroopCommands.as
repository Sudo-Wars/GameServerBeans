package com.evony.client.action {
import com.evony.common.module.CommandResponse;
import com.evony.common.module.troop.ProduceQueueResponse;
import com.evony.common.module.troop.TroopProduceListResponse;

public class TroopCommands extends Object {

    public static const GET_PRODUCE_QUEUE:String = "troop.getProduceQueue";
    public static const CANCEL_TROOP_PRODUCE:String = "troop.cancelTroopProduce";
    public static const PRODUCE_TROOP:String = "troop.produceTroop";
    public static const ACC_TROOP_PRODUCE:String = "troop.accTroopProduce";
    public static const CHECK_IDLE_BARRACK:String = "troop.checkIdleBarrack";
    public static const GET_TROOP_PRODUCE_LIST:String = "troop.getTroopProduceList";
    public static const DISBAND_TROOP:String = "troop.disbandTroop";

    public static function getProduceQueue(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_PRODUCE_QUEUE, {"castleId": param1}, ProduceQueueResponse, param2);
    }

    public static function cancelTroopProduce(param1:int, param2:int, param3:int, param4:Function = null):void {
        CommandFactory.SendCommand(CANCEL_TROOP_PRODUCE, {
            "castleId": param1,
            "positionId": param2,
            "queueId": param3
        }, CommandResponse, param4);
    }

    public static function disbandTroop(param1:int, param2:int, param3:int, param4:Function = null):void {
        CommandFactory.SendCommand(DISBAND_TROOP, {
            "castleId": param1,
            "troopType": param2,
            "num": param3
        }, CommandResponse, param4);
    }

    public static function checkIdleBarrack(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(CHECK_IDLE_BARRACK, {
            "castleId": param1,
            "troopType": param2
        }, CommandResponse, param3);
    }

    public static function getTroopProduceList(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(GET_TROOP_PRODUCE_LIST, {
            "castleId": param1,
            "positionId": param2
        }, TroopProduceListResponse, param3);
    }

    public static function produceTroop(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Function = null):void {
        CommandFactory.SendCommand(PRODUCE_TROOP, {
            "castleId": param1,
            "positionId": param2,
            "troopType": param3,
            "num": param4,
            "isShare": param5,
            "toIdle": param6
        }, CommandResponse, param7);
    }

    public static function accTroopProduce(param1:int, param2:int, param3:int, param4:String, param5:Function = null):void {
        CommandFactory.SendCommand(ACC_TROOP_PRODUCE, {
            "castleId": param1,
            "positionId": param2,
            "queueId": param3,
            "itemId": param4
        }, CommandResponse, param5);
    }

    public function TroopCommands() {
        super();
    }
}
}
