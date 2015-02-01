package com.evony.common.server.events {
import com.evony.common.BaseBean;
import com.evony.common.beans.TroopBean;

public class InjuredTroopUpdate extends BaseBean {

    public function InjuredTroopUpdate(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.troop != null) {
            this.troop = new TroopBean(param2.troop);
        }
        if (param2.castleId != null) {
            this.castleId = param2.castleId;
        }
        if (param2.goldNeed != null) {
            this.goldNeed = param2.goldNeed;
        }
    }

    public var troop:TroopBean;

    public var castleId:int;

    public var goldNeed:int;
}
}
