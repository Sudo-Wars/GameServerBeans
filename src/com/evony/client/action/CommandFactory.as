package com.evony.client.action {
import com.evony.common.Sender;

public class CommandFactory extends Object {

    private static var instance:CommandFactory = new CommandFactory();

    public static function set Sender(param1:Sender):void {
        instance.sender = param1;
    }

    public static function SendCommand(param1:String, param2:Object, param3:Class, param4:Function):void {
        var _loc5_:Sender = instance.sender;
        if (_loc5_) {
            _loc5_.sendMessage(param1, param2, param3, param4);
        }
    }

    public function CommandFactory() {
        super();
    }

    private var sender:Sender;
}
}
