package com.evony.common.server.events {
import com.evony.common.BaseBean;
import com.evony.common.beans.ItemBean;

import mx.collections.ArrayCollection;

public class ItemUpdate extends BaseBean {

    public function ItemUpdate(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        var _loc5_:Object = null;
        this.itemsArray = new ArrayCollection();
        super(param1, param2, param3, param4);
        if (param2.items) {
            for each(_loc5_ in param2.items) {
                this.itemsArray.addItem(new ItemBean(_loc5_));
            }
        }
    }

    public var itemsArray:ArrayCollection;
}
}
