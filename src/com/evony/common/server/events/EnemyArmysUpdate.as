package com.evony.common.server.events {
import com.evony.common.BaseBean;
import com.evony.common.beans.ArmyBean;

import mx.collections.ArrayCollection;

public class EnemyArmysUpdate extends BaseBean {

    public function EnemyArmysUpdate(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        var _loc5_:Object = null;
        this.armysArray = new ArrayCollection();
        super(param1, param2, param3, param4);
        if (param2.armys) {
            for each(_loc5_ in param2.armys) {
                this.armysArray.addItem(new ArmyBean(_loc5_));
            }
        }
    }

    public var armysArray:ArrayCollection;
}
}
