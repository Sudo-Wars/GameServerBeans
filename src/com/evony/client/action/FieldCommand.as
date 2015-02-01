package com.evony.client.action {
import com.evony.common.module.CommandResponse;
import com.evony.common.module.field.CastleFieldInfoResponse;
import com.evony.common.module.field.OtherFieldInfoResponse;

public class FieldCommand extends Object {

    public static const GET_CASTLE_FIELD_INFO:String = "field.getCastleFieldInfo";
    public static const GIVE_UP_FIELD:String = "field.giveUpField";
    public static const GET_OTHER_FIELD_INFO:String = "field.getOtherFieldInfo";

    public static function getOtherFieldInfo(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_OTHER_FIELD_INFO, {"fieldId": param1}, OtherFieldInfoResponse, param2);
    }

    public static function getCastleFieldInfo(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_CASTLE_FIELD_INFO, {"castleId": param1}, CastleFieldInfoResponse, param2);
    }

    public static function giveUpField(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GIVE_UP_FIELD, {"fieldId": param1}, CommandResponse, param2);
    }

    public function FieldCommand() {
        super();
    }
}
}
