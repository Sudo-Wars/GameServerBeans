package com.evony.common.module.alliance {
import com.evony.common.BaseBean;

public class AllianceInfoResponse extends BaseBean {

    public function AllianceInfoResponse(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.errorMsg != null) {
            this.errorMsg = param2.errorMsg;
        }
        if (param2.msg != null) {
            this.msg = param2.msg;
        }
        if (param2.packageId != null) {
            this.packageId = param2.packageId;
        }
        if (param2.leader != null) {
            this.leader = param2.leader;
        }
        if (param2.allinaceInfo != null) {
            this.allinaceInfo = param2.allinaceInfo;
        }
        if (param2.creator != null) {
            this.creator = param2.creator;
        }
        if (param2.memberCount != null) {
            this.memberCount = param2.memberCount;
        }
        if (param2.prestigeCount != null) {
            this.prestigeCount = param2.prestigeCount;
        }
        if (param2.ok != null) {
            this.ok = param2.ok;
        }
        if (param2.ranking != null) {
            this.ranking = param2.ranking;
        }
    }

    public var msg:String;

    public var packageId:Number;

    public var leader:String;

    public var allinaceInfo:String;

    public var creator:String;

    public var prestigeCount:Number;

    public var memberCount:int;

    public var errorMsg:String;

    public var ok:int;

    public var ranking:int;
}
}
