package com.evony.common {
import mx.collections.ArrayCollection;

public class CommonUtil extends Object {

    public static function ObjectCopy(param1:Object, param2:Object):void {
        var _loc3_:String = null;
        if (param1 == null || param2 == null) {
            return;
        }
        for (_loc3_ in param2) {
            delete param2[_loc3_];
            true;
        }
        for (_loc3_ in param1) {
            param2[_loc3_] = param1[_loc3_];
        }
    }

    public static function ArrayCopy(param1:ArrayCollection, param2:ArrayCollection):void {
        if (param1 == null || param2 == null) {
            return;
        }
        param2.removeAll();
        var _loc3_:* = 0;
        while (_loc3_ < param1.length) {
            param2.addItem(param1[_loc3_]);
            _loc3_++;
        }
    }

    public function CommonUtil() {
        super();
    }
}
}
