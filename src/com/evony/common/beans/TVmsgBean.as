package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class TVmsgBean extends Object implements IEventDispatcher {

    public function TVmsgBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.time != null) {
                this.time = param1.time;
            }
            if (param1.msg != null) {
                this.msg = param1.msg;
            }
        }
    }

    private var _3560141time:Number;

    private var _108417msg:String;
    private var _bindingEventDispatcher:EventDispatcher;

    public function get msg():String {
        return this._108417msg;
    }

    public function set msg(param1:String):void {
        var _loc2_:Object = this._108417msg;
        if (_loc2_ !== param1) {
            this._108417msg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "msg", _loc2_, param1));
        }
    }

    public function get time():Number {
        return this._3560141time;
    }

    public function set time(param1:Number):void {
        var _loc2_:Object = this._3560141time;
        if (_loc2_ !== param1) {
            this._3560141time = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "time", _loc2_, param1));
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
