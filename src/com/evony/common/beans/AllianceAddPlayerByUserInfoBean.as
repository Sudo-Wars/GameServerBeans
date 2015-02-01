package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class AllianceAddPlayerByUserInfoBean extends Object implements IEventDispatcher {

    public function AllianceAddPlayerByUserInfoBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.castleCount != null) {
                this.castleCount = param1.castleCount;
            }
            if (param1.inviteTime != null) {
                this.inviteTime = param1.inviteTime;
            }
            if (param1.prestige != null) {
                this.prestige = param1.prestige;
            }
            if (param1.userName != null) {
                this.userName = param1.userName;
            }
            if (param1.rank != null) {
                this.rank = param1.rank;
            }
        }
    }

    private var _764803337castleCount:int;
    private var _1198082422inviteTime:Number;
    private var _1276224445prestige:int;
    private var _266666762userName:String;
    private var _3492908rank:int;
    private var _bindingEventDispatcher:EventDispatcher;

    public function get prestige():int {
        return this._1276224445prestige;
    }

    public function set prestige(param1:int):void {
        var _loc2_:Object = this._1276224445prestige;
        if (_loc2_ !== param1) {
            this._1276224445prestige = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "prestige", _loc2_, param1));
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

    public function get userName():String {
        return this._266666762userName;
    }

    public function set userName(param1:String):void {
        var _loc2_:Object = this._266666762userName;
        if (_loc2_ !== param1) {
            this._266666762userName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "userName", _loc2_, param1));
        }
    }

    public function get castleCount():int {
        return this._764803337castleCount;
    }

    public function set castleCount(param1:int):void {
        var _loc2_:Object = this._764803337castleCount;
        if (_loc2_ !== param1) {
            this._764803337castleCount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "castleCount", _loc2_, param1));
        }
    }

    public function get inviteTime():Number {
        return this._1198082422inviteTime;
    }

    public function set inviteTime(param1:Number):void {
        var _loc2_:Object = this._1198082422inviteTime;
        if (_loc2_ !== param1) {
            this._1198082422inviteTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "inviteTime", _loc2_, param1));
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
