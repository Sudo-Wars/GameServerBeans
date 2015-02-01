package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class ResourceInfoBean extends Object implements IEventDispatcher {

    public function ResourceInfoBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.workPeople != null) {
                this.workPeople = param1.workPeople;
            }
            if (param1.increaseRate != null) {
                this.increaseRate = param1.increaseRate;
            }
            if (param1.max != null) {
                this.max = param1.max;
            }
            if (param1.storeRercent != null) {
                this.storeRercent = param1.storeRercent;
            }
            if (param1.amount != null) {
                this.amount = param1.amount;
            }
        }
    }

    private var _996698880workPeople:int;
    private var _1913146946increaseRate:Number;
    private var _2133060262storeRercent:int;
    private var _107876max:int;
    private var _1413853096amount:Number;
    private var _bindingEventDispatcher:EventDispatcher;

    public function get workPeople():int {
        return this._996698880workPeople;
    }

    public function set workPeople(param1:int):void {
        var _loc2_:Object = this._996698880workPeople;
        if (_loc2_ !== param1) {
            this._996698880workPeople = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "workPeople", _loc2_, param1));
        }
    }

    public function get increaseRate():Number {
        return this._1913146946increaseRate;
    }

    public function set increaseRate(param1:Number):void {
        var _loc2_:Object = this._1913146946increaseRate;
        if (_loc2_ !== param1) {
            this._1913146946increaseRate = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "increaseRate", _loc2_, param1));
        }
    }

    public function get amount():Number {
        return this._1413853096amount;
    }

    public function set amount(param1:Number):void {
        var _loc2_:Object = this._1413853096amount;
        if (_loc2_ !== param1) {
            this._1413853096amount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "amount", _loc2_, param1));
        }
    }

    public function get max():int {
        return this._107876max;
    }

    public function set max(param1:int):void {
        var _loc2_:Object = this._107876max;
        if (_loc2_ !== param1) {
            this._107876max = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "max", _loc2_, param1));
        }
    }

    public function get storeRercent():int {
        return this._2133060262storeRercent;
    }

    public function set storeRercent(param1:int):void {
        var _loc2_:Object = this._2133060262storeRercent;
        if (_loc2_ !== param1) {
            this._2133060262storeRercent = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "storeRercent", _loc2_, param1));
        }
    }

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
    }

    public function removeEventListener(param1:String, param2:Function, param3:Boolean = false):void {
        this._bindingEventDispatcher.removeEventListener(param1, param2, param3);
    }

    public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false):void {
        this._bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
    }

    public function copyTo(param1:ResourceInfoBean):void {
        param1.workPeople = this.workPeople;
        param1.increaseRate = this.increaseRate;
        param1.max = this.max;
        param1.storeRercent = this.storeRercent;
        param1.amount = this.amount;
    }

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
