package com.evony.common.module.alliance {
import com.evony.common.BaseBean;
import com.evony.common.beans.UnitAlliance;

import mx.collections.ArrayCollection;

public class AllianceFriendshipResponse extends BaseBean {

    public function AllianceFriendshipResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        var _loc5_:Object = null;
        this.middleListArray = new ArrayCollection();
        this.friendlyListArray = new ArrayCollection();
        this.enemyListArray = new ArrayCollection();
        super(param1, param2, param3, param4);
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.middleList) {
            for each(_loc5_ in param2.middleList) {
                this.middleListArray.addItem(new UnitAlliance(_loc5_));
            }
        }
        if (param2.friendlyList) {
            for each(_loc5_ in param2.friendlyList) {
                this.friendlyListArray.addItem(new UnitAlliance(_loc5_));
            }
        }
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
        if (param2.enemyList) {
            for each(_loc5_ in param2.enemyList) {
                this.enemyListArray.addItem(new UnitAlliance(_loc5_));
            }
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
        }
    }

    public var msg:String;

    public var middleListArray:ArrayCollection;

    public var packageId:Number;

    public var friendlyListArray:ArrayCollection;

    public var enemyListArray:ArrayCollection;

    public var errorMsg:String;

    public var ok:int;
}
}
