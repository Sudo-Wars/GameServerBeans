package com.evony.common.server.events {
import com.evony.common.BaseBean;

public class ResearchCompleteUpdate extends BaseBean {

    public function ResearchCompleteUpdate(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.castleId != null) {
            this.castleId = param2.castleId;
        }
    }

    public var castleId:int;
}
}
