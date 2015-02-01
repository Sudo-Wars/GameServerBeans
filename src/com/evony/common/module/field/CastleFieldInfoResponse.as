package com.evony.common.module.field {
import com.evony.common.BaseBean;
import com.evony.common.beans.FieldBean;

import mx.collections.ArrayCollection;

public class CastleFieldInfoResponse extends BaseBean {

    public function CastleFieldInfoResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        var _loc5_:Object = null;
        this.fieldsArray = new ArrayCollection();
        super(param1, param2, param3, param4);
        if (param2.fields) {
            for each(_loc5_ in param2.fields) {
                this.fieldsArray.addItem(new FieldBean(_loc5_));
            }
        }
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
        }
    }

    public var fieldsArray:ArrayCollection;

    public var packageId:Number;

    public var msg:String;

    public var errorMsg:String;

    public var ok:int;
}
}
