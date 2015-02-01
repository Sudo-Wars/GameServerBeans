package com.evony.client.action {
import com.evony.common.module.CommandResponse;
import com.evony.common.module.shop.BuyResourceInfoResponse;
import com.evony.common.module.shop.UseItemResultResponse;

public class ShopCommands extends Object {

    public static const BUY:String = "shop.buy";
    public static const BUY_RESOURCE:String = "shop.buyResource";
    public static const USE_ANGEL_ITEM:String = "shop.useAngelItem";
    public static const USE_CASTLE_GOODS:String = "shop.useCastleGoods";
    public static const USE_DEVIL_ITEM:String = "shop.useDevilItem";
    public static const GET_BUY_RESOURCE_INFO:String = "shop.getBuyResourceInfo";
    public static const USE_GOODS:String = "shop.useGoods";

    public static function useDevilItem(param1:int, param2:int, param3:String, param4:String, param5:Function = null):void {
        CommandFactory.SendCommand(USE_DEVIL_ITEM, {
            "x": param1,
            "y": param2,
            "itemId": param3,
            "paramdata": param4
        }, CommandResponse, param5);
    }

    public static function buy(param1:String, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(BUY, {
            "itemId": param1,
            "amount": param2
        }, CommandResponse, param3);
    }

    public static function useGoods(param1:int, param2:String, param3:int, param4:Function = null):void {
        CommandFactory.SendCommand(USE_GOODS, {
            "castleId": param1,
            "itemId": param2,
            "num": param3
        }, UseItemResultResponse, param4);
    }

    public static function getBuyResourceInfo(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_BUY_RESOURCE_INFO, {"castleId": param1}, BuyResourceInfoResponse, param2);
    }

    public static function useAngelItem(param1:String, param2:String, param3:Function = null):void {
        CommandFactory.SendCommand(USE_ANGEL_ITEM, {
            "playername": param1,
            "itemId": param2
        }, CommandResponse, param3);
    }

    public static function useCastleGoods(param1:int, param2:String, param3:Function = null):void {
        CommandFactory.SendCommand(USE_CASTLE_GOODS, {
            "castleId": param1,
            "itemId": param2
        }, CommandResponse, param3);
    }

    public static function buyResource(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Function = null):void {
        CommandFactory.SendCommand(BUY_RESOURCE, {
            "castleId": param1,
            "foodUse": param2,
            "woodUse": param3,
            "ironUse": param4,
            "stoneUse": param5
        }, CommandResponse, param6);
    }

    public function ShopCommands() {
        super();
    }
}
}
