package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class ItemBean extends Object implements IEventDispatcher {

    public function ItemBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.id != null) {
                this.id = param1.id;
            }
            if (param1.name != null) {
                this.name = param1.name;
            }
            if (param1.maxCount != null) {
                this.maxCount = param1.maxCount;
            }
            if (param1.minCount != null) {
                this.minCount = param1.minCount;
            }
            if (param1.count != null) {
                this.count = param1.count;
            }
        }
    }

    private var _3355id:String;
    private var _3373707name:String;
    private var _382106123maxCount:int;
    private var _1394090531minCount:int;
    private var _94851343count:int;
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

    public function get maxCount():int {
        return this._382106123maxCount;
    }

    public function set maxCount(param1:int):void {
        var _loc2_:Object = this._382106123maxCount;
        if (_loc2_ !== param1) {
            this._382106123maxCount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maxCount", _loc2_, param1));
        }
    }

    public function get minCount():int {
        return this._1394090531minCount;
    }

    public function set minCount(param1:int):void {
        var _loc2_:Object = this._1394090531minCount;
        if (_loc2_ !== param1) {
            this._1394090531minCount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "minCount", _loc2_, param1));
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
