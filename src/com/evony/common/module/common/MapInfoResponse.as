package com.evony.common.module.common {
import com.evony.common.BaseBean;
import com.evony.common.beans.MapCastleBean;

import mx.collections.ArrayCollection;

public class MapInfoResponse extends BaseBean {

    public function MapInfoResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        var _loc5_:Object = null;
        this.castlesArray = new ArrayCollection();
        super(param1, param2, param3, param4);
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.y1 != null) {
            this.y1 = param2.y1;
        }
        if (param2.y2 != null) {
            this.y2 = param2.y2;
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
        }
        if (param2.castles) {
            for each(_loc5_ in param2.castles) {
                this.castlesArray.addItem(new MapCastleBean(_loc5_));
            }
        }
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
        if (param2.mapStr != null) {
            this.mapStr = param2.mapStr;
        }
        if (param2.x1 != null) {
            this.x1 = param2.x1;
        }
        if (param2.x2 != null) {
            this.x2 = param2.x2;
        }
    }

    public var errorMsg:String;

    public var msg:String;

    public var ok:int;

    public var packageId:Number;

    public var mapStr:String;

    public var y2:int;

    public var x2:int;

    public var x1:int;

    public var castlesArray:ArrayCollection;

    public var y1:int;
}
}
