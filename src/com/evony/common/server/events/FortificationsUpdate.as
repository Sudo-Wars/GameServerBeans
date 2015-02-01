package com.evony.common.server.events {
import com.evony.common.BaseBean;
import com.evony.common.beans.FortificationsBean;

public class FortificationsUpdate extends BaseBean {

    public function FortificationsUpdate(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.fortification != null) {
            this.fortification = new FortificationsBean(param2.fortification);
        }
        if (param2.castleId != null) {
            this.castleId = param2.castleId;
        }
    }

    public var castleId:int;

    public var fortification:FortificationsBean;
}
}
