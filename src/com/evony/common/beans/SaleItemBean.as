package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class SaleItemBean extends Object implements IEventDispatcher {

    public function SaleItemBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.items != null) {
                this.items = param1.items;
            }
            if (param1.saleType != null) {
                this.saleType = param1.saleType;
            }
        }
    }

    private var _100526016items:String;
    private var _1936082977saleType:int;
    private var _bindingEventDispatcher:EventDispatcher;

    public function get items():String {
        return this._100526016items;
    }

    public function set items(param1:String):void {
        var _loc2_:Object = this._100526016items;
        if (_loc2_ !== param1) {
            this._100526016items = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "items", _loc2_, param1));
        }
    }

    public function get saleType():int {
        return this._1936082977saleType;
    }

    public function set saleType(param1:int):void {
        var _loc2_:Object = this._1936082977saleType;
        if (_loc2_ !== param1) {
            this._1936082977saleType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "saleType", _loc2_, param1));
        }
    }

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
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

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
