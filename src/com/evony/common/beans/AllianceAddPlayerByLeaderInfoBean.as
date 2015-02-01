package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class AllianceAddPlayerByLeaderInfoBean extends Object implements IEventDispatcher {

    public function AllianceAddPlayerByLeaderInfoBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.memberCount != null) {
                this.memberCount = param1.memberCount;
            }
            if (param1.prestige != null) {
                this.prestige = param1.prestige;
            }
            if (param1.allianceName != null) {
                this.allianceName = param1.allianceName;
            }
            if (param1.rank != null) {
                this.rank = param1.rank;
            }
        }
    }

    private var _bindingEventDispatcher:EventDispatcher;
    private var _1358063253memberCount:int;
    private var _1276224445prestige:Number;
    private var _1606140770allianceName:String;
    private var _3492908rank:int;

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

    public function removeEventListener(param1:String, param2:Function, param3:Boolean = false):void {
        this._bindingEventDispatcher.removeEventListener(param1, param2, param3);
    }

    public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false):void {
        this._bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
    }

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
