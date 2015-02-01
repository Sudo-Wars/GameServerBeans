package com.evony.common.module.army {
import com.evony.common.BaseBean;
import com.evony.common.beans.TroopBean;

public class ArmyPracticeResponse extends BaseBean {

    public static const ARMY_PRACTICE_RESULT_GUARD_WIN:int = -1;
    public static const ARMY_PRACTICE_RESULT_ATTACK_WIN:int = 1;

    public function ArmyPracticeResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.attackLostTroop != null) {
            this.attackLostTroop = new TroopBean(param2.attackLostTroop);
        }
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.round != null) {
            this.round = param2.round;
        }
        if (param2.defendLostTroop != null) {
            this.defendLostTroop = new TroopBean(param2.defendLostTroop);
        }
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
        }
        if (param2.result != null) {
            this.result = param2.result;
        }
    }

    public var packageId:Number;

    public var ok:int;

    public var attackLostTroop:TroopBean;

    public var msg:String;

    public var round:int;

    public var defendLostTroop:TroopBean;

    public var errorMsg:String;

    public var result:int;
}
}
