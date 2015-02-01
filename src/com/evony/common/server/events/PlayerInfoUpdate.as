package com.evony.common.server.events {
import com.evony.common.BaseBean;
import com.evony.common.beans.PlayerInfoBean;

public class PlayerInfoUpdate extends BaseBean {

    public function PlayerInfoUpdate(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.playerInfo != null) {
            this.playerInfo = new PlayerInfoBean(param2.playerInfo);
        }
    }

    public var playerInfo:PlayerInfoBean;
}
}
