package com.evony.common.server.events {
import com.evony.common.BaseBean;
import com.evony.common.beans.HeroBean;

public class HeroUpdate extends BaseBean {

    public function HeroUpdate(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.castleId != null) {
            this.castleId = param2.castleId;
        }
        if (param2.hero != null) {
            this.hero = new HeroBean(param2.hero);
        }
        if (param2.updateType != null) {
            this.updateType = param2.updateType;
        }
    }

    public var updateType:int;

    public var castleId:int;

    public var hero:HeroBean;
}
}
