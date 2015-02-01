package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class GamblingItemBean extends Object implements IEventDispatcher {

    public function GamblingItemBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.kind != null) {
                this.kind = param1.kind;
            }
            if (param1.count != null) {
                this.count = param1.count;
            }
            if (param1.id != null) {
                this.id = param1.id;
            }
        }
    }

    private var _bindingEventDispatcher:EventDispatcher;
    private var _3292052kind:int;
    private var _94851343count:int;
    private var _3355id:String;

    public function get kind():int {
        return this._3292052kind;
    }

    public function set kind(param1:int):void {
        var _loc2_:Object = this._3292052kind;
        if (_loc2_ !== param1) {
            this._3292052kind = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "kind", _loc2_, param1));
        }
    }

    public function get count():int {
        return this._94851343count;
    }

    public function set count(param1:int):void {
        var _loc2_:Object = this._94851343count;
        if (_loc2_ !== param1) {
            this._94851343count = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "count", _loc2_, param1));
        }
    }

    public function get id():String {
        return this._3355id;
    }

    public function set id(param1:String):void {
        var _loc2_:Object = this._3355id;
        if (_loc2_ !== param1) {
            this._3355id = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "id", _loc2_, param1));
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
