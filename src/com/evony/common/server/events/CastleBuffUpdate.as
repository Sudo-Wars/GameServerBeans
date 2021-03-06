package com.evony.common.server.events {
import com.evony.common.BaseBean;
import com.evony.common.beans.BuffBean;

public class CastleBuffUpdate extends BaseBean {

    public function CastleBuffUpdate(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.updateType != null) {
            this.updateType = param2.updateType;
        }
        if (param2.buffBean != null) {
            this.buffBean = new BuffBean(param2.buffBean);
        }
        if (param2.castleid != null) {
            this.castleid = param2.castleid;
        }
    }

    public var updateType:int;

    public var castleid:int;

    public var buffBean:BuffBean;
}
}
