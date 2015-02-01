package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class BuffBean extends Object implements IEventDispatcher {

    public function BuffBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.descName != null) {
                this.descName = param1.descName;
            }
            if (param1.endTime != null) {
                this.endTime = param1.endTime;
            }
            if (param1.typeId != null) {
                this.typeId = param1.typeId;
            }
        }
    }

    private var _1017134268descName:String;
    private var _1607243192endTime:Number;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _858803723typeId:String;

    public function get endTime():Number {
        return this._1607243192endTime;
    }

    public function set endTime(param1:Number):void {
        var _loc2_:Object = this._1607243192endTime;
        if (_loc2_ !== param1) {
            this._1607243192endTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "endTime", _loc2_, param1));
        }
    }

    public function get typeId():String {
        return this._858803723typeId;
    }

    public function set typeId(param1:String):void {
        var _loc2_:Object = this._858803723typeId;
        if (_loc2_ !== param1) {
            this._858803723typeId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "typeId", _loc2_, param1));
        }
    }

    public function get descName():String {
        return this._1017134268descName;
    }

    public function set descName(param1:String):void {
        var _loc2_:Object = this._1017134268descName;
        if (_loc2_ !== param1) {
            this._1017134268descName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "descName", _loc2_, param1));
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

    public function copyTo(param1:BuffBean):void {
        param1.descName = this.descName;
        param1.endTime = this.endTime;
        param1.typeId = this.typeId;
    }

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
