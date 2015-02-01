package com.evony.common.server.events {
import com.evony.common.BaseBean;
import com.evony.common.beans.CastleBean;

public class CastleUpdate extends BaseBean {

    public function CastleUpdate(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.updateType != null) {
            this.updateType = param2.updateType;
        }
        if (param2.castleBean != null) {
            this.castleBean = new CastleBean(param2.castleBean);
        }
    }

    public var castleBean:CastleBean;

    public var updateType:int;
}
}
