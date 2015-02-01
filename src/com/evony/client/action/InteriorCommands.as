package com.evony.client.action {
import com.evony.common.module.CommandResponse;
import com.evony.common.module.interior.ResourceProduceDataResponse;

public class InteriorCommands extends Object {

    public static const MODIFY_COMMENCE_RATE:String = "interior.modifyCommenceRate";
    public static const PACIFY_PEOPLE:String = "interior.pacifyPeople";
    public static const TAXATION:String = "interior.taxation";
    public static const GET_RESOURCE_PRODUCE_DATA:String = "interior.getResourceProduceData";
    public static const MODIFY_TAX_RATE:String = "interior.modifyTaxRate";

    public static function modifyCommenceRate(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Function = null):void {
        CommandFactory.SendCommand(MODIFY_COMMENCE_RATE, {
            "castleId": param1,
            "foodrate": param2,
            "woodrate": param3,
            "stonerate": param4,
            "ironrate": param5
        }, CommandResponse, param6);
    }

    public static function taxation(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(TAXATION, {
            "castleId": param1,
            "typeId": param2
        }, CommandResponse, param3);
    }

    public static function getResourceProduceData(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(GET_RESOURCE_PRODUCE_DATA, {"castleId": param1}, ResourceProduceDataResponse, param2);
    }

    public static function modifyTaxRate(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(MODIFY_TAX_RATE, {
            "castleId": param1,
            "tax": param2
        }, CommandResponse, param3);
    }

    public static function pacifyPeople(param1:int, param2:int, param3:Function = null):void {
        CommandFactory.SendCommand(PACIFY_PEOPLE, {
            "castleId": param1,
            "typeId": param2
        }, CommandResponse, param3);
    }

    public function InteriorCommands() {
        super();
    }
}
}
