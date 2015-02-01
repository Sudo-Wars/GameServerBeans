package com.evony.client.action {
import com.evony.common.module.CommandResponse;
import com.evony.common.module.castle.AvailableBuilingListResponse;
import com.evony.common.module.castle.CheckOutBuildingResponse;
import com.evony.common.module.castle.CoinsNeedResponse;

public class CastleCommands extends Object {

    public static const GET_DESTRUCT_BUILD_BEAN:String = "castle.getDestructBuildBean";
    public static const SPEEDUP_BUILDING_QUEUE:String = "castle.speedupBuildingQueue";
    public static const NEW_BUILDING_QUEUE:String = "castle.newBuildingQueue";
    public static const CANCLE_BUILD_COMMAND:String = "castle.cancleBuildCommand";
    public static const GET_BUILDING_QUEUE_COINS_NEED:String = "castle.getBuildingQueueCoinsNeed";
    public static const CANCEL_BUILDING_QUEUE:String = "castle.cancelBuildingQueue";
    public static const NEW_BUILDING:String = "castle.newBuilding";
    public static const CHECK_OUT_UPGRADE:String = "castle.checkOutUpgrade";
    public static const UPGRADE_BUILDING:String = "castle.upgradeBuilding";
    public static const GET_AVAILABLE_BUILDING_BEAN:String = "castle.getAvailableBuildingBean";
    public static const SPEED_UP_BUILD_COMMAND:String = "castle.speedUpBuildCommand";
    public static const GET_AVAILABLE_BUILDING_LIST_OUTSIDE:String = "castle.getAvailableBuildingListOutside";
    public static const GET_AVAILABLE_BUILDING_LIST_INSIDE:String = "castle.getAvailableBuildingListInside";
    public static const DEMOLISH_BUILDING_QUEUE:String = "castle.demolishBuildingQueue";
    public static const GET_COINS_NEED:String = "castle.getCoinsNeed";
    public static const DESTRUCT_BUILDING:String = "castle.destructBuilding";

    public static function getAvailableBuildingListOutside(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_AVAILABLE_BUILDING_LIST_OUTSIDE, {"castleId": param1}, AvailableBuilingListResponse, param2);
    }

    public static function newBuildingQueue(param1:int, param2:int, param3:int, param4:int, param5:Function = null):void {
        CommandFactory.SendCommand(NEW_BUILDING_QUEUE, {
            "castleId": param1,
            "type": param2,
            "level": param3,
            "positionId": param4
        }, CommandResponse, param5);
    }

    public static function getAvailableBuildingListInside(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_AVAILABLE_BUILDING_LIST_INSIDE, {"castleId": param1}, AvailableBuilingListResponse, param2);
    }

    public static function getCoinsNeed(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(GET_COINS_NEED, {
            "castleId": param1,
            "positionId": param2
        }, CoinsNeedResponse, param3);
    }

    public static function demolishBuildingQueue(param1:int, param2:int, param3:int, param4:int, param5:Function = null):void {
        CommandFactory.SendCommand(DEMOLISH_BUILDING_QUEUE, {
            "castleId": param1,
            "type": param2,
            "level": param3,
            "positionId": param4
        }, CommandResponse, param5);
    }

    public static function getDestructBuildBean(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(GET_DESTRUCT_BUILD_BEAN, {
            "castleId": param1,
            "positionId": param2
        }, AvailableBuilingListResponse, param3);
    }

    public static function checkOutUpgrade(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(CHECK_OUT_UPGRADE, {
            "castleId": param1,
            "positionId": param2
        }, CheckOutBuildingResponse, param3);
    }

    public static function speedUpBuildCommand(param1:int, param2:int, param3:String, param4:Function = null):void {
        CommandFactory.SendCommand(SPEED_UP_BUILD_COMMAND, {
            "castleId": param1,
            "positionId": param2,
            "itemId": param3
        }, CommandResponse, param4);
    }

    public static function cancelBuildingQueue(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(CANCEL_BUILDING_QUEUE, {
            "castleId": param1,
            "queueId": param2
        }, CommandResponse, param3);
    }

    public static function getBuildingQueueCoinsNeed(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(GET_BUILDING_QUEUE_COINS_NEED, {
            "castleId": param1,
            "queueId": param2
        }, CoinsNeedResponse, param3);
    }

    public static function destructBuilding(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(DESTRUCT_BUILDING, {
            "castleId": param1,
            "positionId": param2
        }, CommandResponse, param3);
    }

    public static function cancleBuildCommand(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(CANCLE_BUILD_COMMAND, {
            "castleId": param1,
            "positionId": param2
        }, CommandResponse, param3);
    }

    public static function newBuilding(param1:int, param2:int, param3:int, param4:Function = null):void {
        CommandFactory.SendCommand(NEW_BUILDING, {
            "castleId": param1,
            "positionId": param2,
            "buildingType": param3
        }, CommandResponse, param4);
    }

    public static function upgradeBuilding(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(UPGRADE_BUILDING, {
            "castleId": param1,
            "positionId": param2
        }, CommandResponse, param3);
    }

    public static function speedupBuildingQueue(param1:int, param2:int, param3:String, param4:Function = null):void {
        CommandFactory.SendCommand(SPEEDUP_BUILDING_QUEUE, {
            "castleId": param1,
            "queueId": param2,
            "itemId": param3
        }, CommandResponse, param4);
    }

    public static function getAvailableBuildingBean(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(GET_AVAILABLE_BUILDING_BEAN, {
            "castleId": param1,
            "typeId": param2
        }, AvailableBuilingListResponse, param3);
    }

    public function CastleCommands() {
        super();
    }
}
}
