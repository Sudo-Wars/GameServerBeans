package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class IndexAllianceInfoBean extends Object implements IEventDispatcher {

    public function IndexAllianceInfoBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.rank != null) {
                this.rank = param1.rank;
            }
            if (param1.allianceInfo != null) {
                this.allianceInfo = param1.allianceInfo;
            }
            if (param1.memberLimit != null) {
                this.memberLimit = param1.memberLimit;
            }
            if (param1.creatorName != null) {
                this.creatorName = param1.creatorName;
            }
            if (param1.allianceNote != null) {
                this.allianceNote = param1.allianceNote;
            }
            if (param1.memberCount != null) {
                this.memberCount = param1.memberCount;
            }
            if (param1.leaderName != null) {
                this.leaderName = param1.leaderName;
            }
            if (param1.prestige != null) {
                this.prestige = param1.prestige;
            }
            if (param1.allianceName != null) {
                this.allianceName = param1.allianceName;
            }
        }
    }

    private var _1606004101allianceInfo:String;
    private var _1358063253memberCount:int;
    private var _1191282484leaderName:String;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _1276224445prestige:Number;
    private var _1366188353memberLimit:int;
    private var _1606140770allianceName:String;
    private var _190875433creatorName:String;
    private var _3492908rank:int;
    private var _1606154441allianceNote:String;

    public function get memberLimit():int {
        return this._1366188353memberLimit;
    }

    public function set memberLimit(param1:int):void {
        var _loc2_:Object = this._1366188353memberLimit;
        if (_loc2_ !== param1) {
            this._1366188353memberLimit = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "memberLimit", _loc2_, param1));
        }
    }

    public function get leaderName():String {
        return this._1191282484leaderName;
    }

    public function set leaderName(param1:String):void {
        var _loc2_:Object = this._1191282484leaderName;
        if (_loc2_ !== param1) {
            this._1191282484leaderName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "leaderName", _loc2_, param1));
        }
    }

    public function get allianceInfo():String {
        return this._1606004101allianceInfo;
    }

    public function set allianceInfo(param1:String):void {
        var _loc2_:Object = this._1606004101allianceInfo;
        if (_loc2_ !== param1) {
            this._1606004101allianceInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "allianceInfo", _loc2_, param1));
        }
    }

    public function get allianceNote():String {
        return this._1606154441allianceNote;
    }

    public function set allianceNote(param1:String):void {
        var _loc2_:Object = this._1606154441allianceNote;
        if (_loc2_ !== param1) {
            this._1606154441allianceNote = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "allianceNote", _loc2_, param1));
        }
    }

    public function get memberCount():int {
        return this._1358063253memberCount;
    }

    public function set memberCount(param1:int):void {
        var _loc2_:Object = this._1358063253memberCount;
        if (_loc2_ !== param1) {
            this._1358063253memberCount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "memberCount", _loc2_, param1));
        }
    }

    public function get creatorName():String {
        return this._190875433creatorName;
    }

    public function set creatorName(param1:String):void {
        var _loc2_:Object = this._190875433creatorName;
        if (_loc2_ !== param1) {
            this._190875433creatorName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "creatorName", _loc2_, param1));
        }
    }

    public function get prestige():Number {
        return this._1276224445prestige;
    }

    public function set prestige(param1:Number):void {
        var _loc2_:Object = this._1276224445prestige;
        if (_loc2_ !== param1) {
            this._1276224445prestige = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "prestige", _loc2_, param1));
        }
    }

    public function get allianceName():String {
        return this._1606140770allianceName;
    }

    public function set allianceName(param1:String):void {
        var _loc2_:Object = this._1606140770allianceName;
        if (_loc2_ !== param1) {
            this._1606140770allianceName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "allianceName", _loc2_, param1));
        }
    }

    public function get rank():int {
        return this._3492908rank;
    }

    public function set rank(param1:int):void {
        var _loc2_:Object = this._3492908rank;
        if (_loc2_ !== param1) {
            this._3492908rank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rank", _loc2_, param1));
        }
    }

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function removeEventListener(param1:String, param2:Function, param3:Boolean = false):void {
        this._bindingEventDispatcher.removeEventListener(param1, param2, param3);
    }

    public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false):void {
        this._bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
    }

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
