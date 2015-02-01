package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class CastleSignInfoBean extends Object implements IEventDispatcher {

    public function CastleSignInfoBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.x != null) {
                this.x = param1.x;
            }
            if (param1.name != null) {
                this.name = param1.name;
            }
            if (param1.y != null) {
                this.y = param1.y;
            }
            if (param1.id != null) {
                this.id = param1.id;
            }
        }
    }

    private var _120x:int;
    private var _3373707name:String;
    private var _121y:int;
    private var _3355id:int;
    private var _bindingEventDispatcher:EventDispatcher;

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

    public function get id():int {
        return this._3355id;
    }

    public function set id(param1:int):void {
        var _loc2_:Object = this._3355id;
        if (_loc2_ !== param1) {
            this._3355id = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "id", _loc2_, param1));
        }
    }

    public function get x():int {
        return this._120x;
    }

    public function set x(param1:int):void {
        var _loc2_:Object = this._120x;
        if (_loc2_ !== param1) {
            this._120x = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "x", _loc2_, param1));
        }
    }

    public function get y():int {
        return this._121y;
    }

    public function set y(param1:int):void {
        var _loc2_:Object = this._121y;
        if (_loc2_ !== param1) {
            this._121y = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "y", _loc2_, param1));
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

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
