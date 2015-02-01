package com.evony.common.module.alliance {
import com.evony.common.BaseBean;
import com.evony.common.beans.PlayerInfoBean;

public class PlayerInfoResponse extends BaseBean {

    public function PlayerInfoResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.playerInfo != null) {
            this.playerInfo = new PlayerInfoBean(param2.playerInfo);
        }
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
        }
    }

    public var errorMsg:String;

    public var msg:String;

    public var packageId:Number;

    public var ok:int;

    public var playerInfo:PlayerInfoBean;
}
}
