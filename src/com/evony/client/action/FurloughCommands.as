package com.evony.client.action {
import com.evony.common.module.furlough.FurloughResponse;

public class FurloughCommands extends Object {

    public static const IS_FURLOUGHT:String = "furlough.isFurlought";
    public static const CANCEL_FURLOUGHT:String = "furlough.cancelFurlought";

    public static function cancelFurlought(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(CANCEL_FURLOUGHT, {"playerId": param1}, FurloughResponse, param2);
    }

    public static function isFurlought(param1:int, param2:int, param3:String, param4:Boolean, param5:Function = null):void {
        CommandFactory.SendCommand(IS_FURLOUGHT, {
            "playerId": param1,
            "day": param2,
            "password": param3,
            "isAutoFurlough": param4
        }, FurloughResponse, param5);
    }

    public function FurloughCommands() {
        super();
    }
}
}
