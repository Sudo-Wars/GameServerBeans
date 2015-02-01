package com.evony.common.server.events {
import com.evony.common.BaseBean;
import com.evony.common.beans.BuildingBean;

public class BuildComplate extends BaseBean {

    public function BuildComplate(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.castleId != null) {
            this.castleId = param2.castleId;
        }
        if (param2.buildingBean != null) {
            this.buildingBean = new BuildingBean(param2.buildingBean);
        }
    }

    public var castleId:int;

    public var buildingBean:BuildingBean;
}
}
