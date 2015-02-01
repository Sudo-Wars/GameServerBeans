package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class UnitAlliance extends Object implements IEventDispatcher {

    public function UnitAlliance(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.aPrestigeCount != null) {
                this.aPrestigeCount = param1.aPrestigeCount;
            }
            if (param1.memberCount != null) {
                this.memberCount = param1.memberCount;
            }
            if (param1.leaderName != null) {
                this.leaderName = param1.leaderName;
            }
            if (param1.honor != null) {
                this.honor = param1.honor;
            }
            if (param1.allianceName != null) {
                this.allianceName = param1.allianceName;
            }
            if (param1.rank != null) {
                this.rank = param1.rank;
            }
        }
    }

    private var _913519701aPrestigeCount:Number;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _1358063253memberCount:int;
    private var _1191282484leaderName:String;
    private var _99462250honor:Number;
    private var _1606140770allianceName:String;
    private var _3492908rank:int;

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

    public function get aPrestigeCount():Number {
        return this._913519701aPrestigeCount;
    }

    public function set aPrestigeCount(param1:Number):void {
        var _loc2_:Object = this._913519701aPrestigeCount;
        if (_loc2_ !== param1) {
            this._913519701aPrestigeCount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "aPrestigeCount", _loc2_, param1));
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

    public function get honor():Number {
        return this._99462250honor;
    }

    public function set honor(param1:Number):void {
        var _loc2_:Object = this._99462250honor;
        if (_loc2_ !== param1) {
            this._99462250honor = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "honor", _loc2_, param1));
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

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
    }

    public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false):void {
        this._bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
    }

    public function removeEventListener(param1:String, param2:Function, param3:Boolean = false):void {
        this._bindingEventDispatcher.removeEventListener(param1, param2, param3);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
