package com.evony.client.action {
import com.evony.common.module.CommandResponse;
import com.evony.common.module.trade.SearchTradesResponse;
import com.evony.common.module.trade.TradeListResponse;
import com.evony.common.module.trade.TransingTradeListResponse;

public class TradeCommands extends Object {

    public static const GET_MY_TRADE_LIST:String = "trade.getMyTradeList";
    public static const NEW_TRADE:String = "trade.newTrade";
    public static const SEARCH_TRADES:String = "trade.searchTrades";
    public static const GET_TRANSING_TRADE_LIST:String = "trade.getTransingTradeList";
    public static const SPEED_UP_TRANS:String = "trade.speedUpTrans";
    public static const CANCEL_TRADE:String = "trade.cancelTrade";

    public static function getMyTradeList(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_MY_TRADE_LIST, {"castleId": param1}, TradeListResponse, param2);
    }

    public static function newTrade(param1:int, param2:int, param3:int, param4:int, param5:String, param6:Function = null):void {
        CommandFactory.SendCommand(NEW_TRADE, {
            "castleId": param1,
            "resType": param2,
            "tradeType": param3,
            "amount": param4,
            "price": param5
        }, CommandResponse, param6);
    }

    public static function speedUpTrans(param1:int, param2:int, param3:String, param4:Function = null):void {
        CommandFactory.SendCommand(SPEED_UP_TRANS, {
            "castleId": param1,
            "transingTradeId": param2,
            "itemId": param3
        }, CommandResponse, param4);
    }

    public static function getTransingTradeList(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_TRANSING_TRADE_LIST, {"castleId": param1}, TransingTradeListResponse, param2);
    }

    public static function searchTrades(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(SEARCH_TRADES, {"resType": param1}, SearchTradesResponse, param2);
    }

    public static function cancelTrade(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(CANCEL_TRADE, {
            "castleId": param1,
            "tradeId": param2
        }, CommandResponse, param3);
    }

    public function TradeCommands() {
        super();
    }
}
}
