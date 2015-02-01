package com.evony.common.server.events {
import com.evony.common.BaseBean;
import com.evony.common.beans.BuildingQueueBean;

public class BuildingQueueUpdate extends BaseBean {

    public function BuildingQueueUpdate(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.castleId != null) {
            this.castleId = param2.castleId;
        }
        if (param2.buildingQueueBean != null) {
            this.buildingQueueBean = new BuildingQueueBean(param2.buildingQueueBean);
        }
    }

    public var castleId:int;

    public var buildingQueueBean:BuildingQueueBean;
}
}
