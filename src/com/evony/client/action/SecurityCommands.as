package com.evony.client.action {
import com.evony.common.module.CommandResponse;
import com.evony.common.module.common.GetIsSecurityCodeSettedResponse;
import com.evony.common.module.common.GetProtectOptionResponse;

public class SecurityCommands extends Object {

    public static const CANCEL_REMOVING_SECURITY_CODE_PROCESS:String = "common.cancelRemovingSecurityCodeProcess";
    public static const SET_SECURITY_CODE:String = "common.setSecurityCode";
    public static const REMOVE_SECURITY_CODE:String = "common.removeSecurityCode";
    public static const SET_UNLOCK_OPTION:String = "common.setUnlockOption";
    public static const GET_PROTECT_OPTION:String = "common.getProtectOption";
    public static const GET_IS_SECURITY_CODE_SETTED:String = "common.getIsSecurityCodeSetted";
    public static const SET_PROTECT_OPTION:String = "common.setProtectOption";
    public static const AUTH_SECURITY_CODE:String = "common.authSecurityCode";
    public static const CHANGE_SECURITY_CODE:String = "common.changeSecurityCode";

    public static function cancelRemovingSecurityCodeProcess(param1:Function = null):void {
        CommandFactory.SendCommand(CANCEL_REMOVING_SECURITY_CODE_PROCESS, {}, CommandResponse, param1);
    }

    public static function getProtectOption(param1:Function = null):void {
        CommandFactory.SendCommand(GET_PROTECT_OPTION, {}, GetProtectOptionResponse, param1);
    }

    public static function authSecurityCode(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(AUTH_SECURITY_CODE, {"code": param1}, CommandResponse, param2);
    }

    public static function setSecurityCode(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(SET_SECURITY_CODE, {"code": param1}, CommandResponse, param2);
    }

    public static function changeSecurityCode(param1:String, param2:String, param3:Function = null):void {
        CommandFactory.SendCommand(CHANGE_SECURITY_CODE, {
            "curCode": param1,
            "newCode": param2
        }, CommandResponse, param3);
    }

    public static function getIsSecurityCodeSetted(param1:Function = null):void {
        CommandFactory.SendCommand(GET_IS_SECURITY_CODE_SETTED, {}, GetIsSecurityCodeSettedResponse, param1);
    }

    public static function setProtectOption(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(SET_PROTECT_OPTION, {"option": param1}, CommandResponse, param2);
    }

    public static function setUnlockOption(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(SET_UNLOCK_OPTION, {"option": param1}, CommandResponse, param2);
    }

    public static function removeSecurityCode(param1:Function = null):void {
        CommandFactory.SendCommand(REMOVE_SECURITY_CODE, {}, CommandResponse, param1);
    }

    public function SecurityCommands() {
        super();
    }
}
}
