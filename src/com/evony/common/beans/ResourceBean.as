package com.evony.common.beans {
import autoevony.common.ResourceType;

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class ResourceBean extends Object implements IEventDispatcher {

    public function ResourceBean(param1:Object = null) {
        this._370720114resOrder = [];
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.wood != null) {
                this.wood = param1.wood;
            }
            if (param1.stone != null) {
                this.stone = param1.stone;
            }
            if (param1.food != null) {
                this.food = param1.food;
            }
            if (param1.gold != null) {
                this.gold = param1.gold;
            }
            if (param1.iron != null) {
                this.iron = param1.iron;
            }
        }
    }

    private var _bindingEventDispatcher:EventDispatcher;
    private var _109770853stone:Number = 0;
    private var _3148894food:Number = 0;
    private var _3178592gold:Number = 0;
    private var _3241160iron:Number = 0;
    private var _370720114resOrder:Array;
    private var _3655341wood:Number = 0;

    public function get total():Number {
        return this.gold + this.food + this.wood + this.stone + this.iron;
    }

    public function get resOrder():Array {
        return this._370720114resOrder;
    }

    public function set resOrder(param1:Array):void {
        var _loc2_:Object = this._370720114resOrder;
        if (_loc2_ !== param1) {
            this._370720114resOrder = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "resOrder", _loc2_, param1));
        }
    }

    public function get iron():Number {
        return this._3241160iron;
    }

    public function set iron(param1:Number):void {
        var _loc2_:Object = this._3241160iron;
        if (_loc2_ !== param1) {
            this._3241160iron = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "iron", _loc2_, param1));
        }
    }

    public function get food():Number {
        return this._3148894food;
    }

    public function set food(param1:Number):void {
        var _loc2_:Object = this._3148894food;
        if (_loc2_ !== param1) {
            this._3148894food = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "food", _loc2_, param1));
        }
    }

    public function get stone():Number {
        return this._109770853stone;
    }

    public function set stone(param1:Number):void {
        var _loc2_:Object = this._109770853stone;
        if (_loc2_ !== param1) {
            this._109770853stone = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "stone", _loc2_, param1));
        }
    }

    public function get wood():Number {
        return this._3655341wood;
    }

    public function set wood(param1:Number):void {
        var _loc2_:Object = this._3655341wood;
        if (_loc2_ !== param1) {
            this._3655341wood = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "wood", _loc2_, param1));
        }
    }

    public function get gold():Number {
        return this._3178592gold;
    }

    public function set gold(param1:Number):void {
        var _loc2_:Object = this._3178592gold;
        if (_loc2_ !== param1) {
            this._3178592gold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gold", _loc2_, param1));
        }
    }

    public function addTo(param1:ResourceBean):void {
        param1.food = param1.food + this.food;
        param1.gold = param1.gold + this.gold;
        param1.iron = param1.iron + this.iron;
        param1.stone = param1.stone + this.stone;
        param1.wood = param1.wood + this.wood;
    }

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
    }

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function empty():Boolean {
        return this.gold == 0 && this.food == 0 && this.wood == 0 && this.stone == 0 && this.iron == 0;
    }

    public function removeEventListener(param1:String, param2:Function, param3:Boolean = false):void {
        this._bindingEventDispatcher.removeEventListener(param1, param2, param3);
    }

    public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false):void {
        this._bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
    }

    public function toObject():Object {
        var _loc1_:Object = new Object();
        _loc1_.wood = this.wood;
        _loc1_.stone = this.stone;
        _loc1_.food = this.food;
        _loc1_.gold = this.gold;
        _loc1_.iron = this.iron;
        return _loc1_;
    }

    public function toString(param1:String = " "):String {
        var _loc3_:String = null;
        var _loc4_:* = NaN;
        var _loc2_:Array = new Array();
        for each(_loc3_ in ResourceType.ResourceIntNames) {
            _loc4_ = this[_loc3_];
            if (_loc4_ != 0) {
                _loc2_.push(_loc3_ + ":" + (_loc4_ < 0 ? "*" : _loc4_));
            }
        }
        return _loc2_.join(param1);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
