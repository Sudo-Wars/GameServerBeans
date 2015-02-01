package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class RankAllianceBean extends Object implements IEventDispatcher {

    public function RankAllianceBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.rank != null) {
                this.rank = param1.rank;
            }
            if (param1.name != null) {
                this.name = param1.name;
            }
            if (param1.member != null) {
                this.member = param1.member;
            }
            if (param1.honor != null) {
                this.honor = param1.honor;
            }
            if (param1.description != null) {
                this.description = param1.description;
            }
            if (param1.prestige != null) {
                this.prestige = param1.prestige;
            }
            if (param1.createrName != null) {
                this.createrName = param1.createrName;
            }
            if (param1.city != null) {
                this.city = param1.city;
            }
            if (param1.playerName != null) {
                this.playerName = param1.playerName;
            }
        }
    }

    private var _99462250honor:Number;
    private var _1077769574member:int;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _3373707name:String;
    private var _1724546052description:String;
    private var _1276224445prestige:Number;
    private var _477166943createrName:String;
    private var _2095657228playerName:String;
    private var _3053931city:int;
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

    public function get name():String {
        return this._3373707name;
    }

    public function set name(param1:String):void {
        var _loc2_:Object = this._3373707name;
        if (_loc2_ !== param1) {
            this._3373707name = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "name", _loc2_, param1));
        }
    }

    public function get playerName():String {
        return this._2095657228playerName;
    }

    public function set playerName(param1:String):void {
        var _loc2_:Object = this._2095657228playerName;
        if (_loc2_ !== param1) {
            this._2095657228playerName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerName", _loc2_, param1));
        }
    }

    public function get member():int {
        return this._1077769574member;
    }

    public function set member(param1:int):void {
        var _loc2_:Object = this._1077769574member;
        if (_loc2_ !== param1) {
            this._1077769574member = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "member", _loc2_, param1));
        }
    }

    public function get createrName():String {
        return this._477166943createrName;
    }

    public function set createrName(param1:String):void {
        var _loc2_:Object = this._477166943createrName;
        if (_loc2_ !== param1) {
            this._477166943createrName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "createrName", _loc2_, param1));
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

    public function get city():int {
        return this._3053931city;
    }

    public function set city(param1:int):void {
        var _loc2_:Object = this._3053931city;
        if (_loc2_ !== param1) {
            this._3053931city = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "city", _loc2_, param1));
        }
    }

    public function get description():String {
        return this._1724546052description;
    }

    public function set description(param1:String):void {
        var _loc2_:Object = this._1724546052description;
        if (_loc2_ !== param1) {
            this._1724546052description = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "description", _loc2_, param1));
        }
    }

    public function removeEventListener(param1:String, param2:Function, param3:Boolean = false):void {
        this._bindingEventDispatcher.removeEventListener(param1, param2, param3);
    }

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
    }

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false):void {
        this._bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
