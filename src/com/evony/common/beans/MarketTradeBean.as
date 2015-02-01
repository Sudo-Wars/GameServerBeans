package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class MarketTradeBean extends Object implements IEventDispatcher {

    public function MarketTradeBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.amount != null) {
                this.amount = param1.amount;
            }
            if (param1.price != null) {
                this.price = param1.price;
            }
        }
    }

    private var _106934601price:Number;
    private var _1413853096amount:int;
    private var _bindingEventDispatcher:EventDispatcher;

    public function get price():Number {
        return this._106934601price;
    }

    public function set price(param1:Number):void {
        var _loc2_:Object = this._106934601price;
        if (_loc2_ !== param1) {
            this._106934601price = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "price", _loc2_, param1));
        }
    }

    public function get amount():int {
        return this._1413853096amount;
    }

    public function set amount(param1:int):void {
        var _loc2_:Object = this._1413853096amount;
        if (_loc2_ !== param1) {
            this._1413853096amount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "amount", _loc2_, param1));
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
