package com.evony.common.module.friend {
import com.evony.common.BaseBean;
import com.evony.common.beans.PlayerInfoBean;

import mx.collections.ArrayCollection;

public class FriendResponse extends BaseBean {

    public function FriendResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        var _loc5_:Object = null;
        this.blockArrArray = new ArrayCollection();
        this.friendArrArray = new ArrayCollection();
        super(param1, param2, param3, param4);
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.blockArr) {
            for each(_loc5_ in param2.blockArr) {
                this.blockArrArray.addItem(new PlayerInfoBean(_loc5_));
            }
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.friendArr) {
            for each(_loc5_ in param2.friendArr) {
                this.friendArrArray.addItem(new PlayerInfoBean(_loc5_));
            }
        }
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
        }
    }

    public var msg:String;

    public var blockArrArray:ArrayCollection;

    public var packageId:Number;

    public var friendArrArray:ArrayCollection;

    public var errorMsg:String;

    public var ok:int;
}
}
