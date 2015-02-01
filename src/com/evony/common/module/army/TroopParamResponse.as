package com.evony.common.module.army {
import com.evony.common.BaseBean;

public class TroopParamResponse extends BaseBean {

    public function TroopParamResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.loadSkillParam != null) {
            this.loadSkillParam = param2.loadSkillParam;
        }
        if (param2.driveSkillParam != null) {
            this.driveSkillParam = param2.driveSkillParam;
        }
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
        if (param2.transportStationParam != null) {
            this.transportStationParam = param2.transportStationParam;
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
        }
        if (param2.marchSkillParam != null) {
            this.marchSkillParam = param2.marchSkillParam;
        }
    }

    public var msg:String;

    public var driveSkillParam:int;

    public var packageId:Number;

    public var loadSkillParam:int;

    public var errorMsg:String;

    public var transportStationParam:int;

    public var ok:int;

    public var marchSkillParam:int;
}
}
