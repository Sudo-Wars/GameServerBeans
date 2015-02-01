package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class StoreBean extends Object implements IEventDispatcher {

    public function StoreBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.storePercent != null) {
                this.storePercent = param1.storePercent;
            }
            if (param1.magnitude != null) {
                this.magnitude = param1.magnitude;
            }
            if (param1.warehourseCapacity != null) {
                this.warehourseCapacity = param1.warehourseCapacity;
            }
            if (param1.resLimt != null) {
                this.resLimt = param1.resLimt;
            }
            if (param1.unstorage != null) {
                this.unstorage = param1.unstorage;
            }
            if (param1.storeTypeId != null) {
                this.storeTypeId = param1.storeTypeId;
            }
            if (param1.storage != null) {
                this.storage = param1.storage;
            }
        }
    }

    private var _358052900storePercent:int;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _2016783856magnitude:int;
    private var _292680141warehourseCapacity:int;
    private var _1096322212resLimt:int;
    private var _172472894unstorage:int;
    private var _1795184074storeTypeId:int;
    private var _1884274053storage:int;

    public function get unstorage():int {
        return this._172472894unstorage;
    }

    public function set unstorage(param1:int):void {
        var _loc2_:Object = this._172472894unstorage;
        if (_loc2_ !== param1) {
            this._172472894unstorage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "unstorage", _loc2_, param1));
        }
    }

    public function get warehourseCapacity():int {
        return this._292680141warehourseCapacity;
    }

    public function set warehourseCapacity(param1:int):void {
        var _loc2_:Object = this._292680141warehourseCapacity;
        if (_loc2_ !== param1) {
            this._292680141warehourseCapacity = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "warehourseCapacity", _loc2_, param1));
        }
    }

    public function get magnitude():int {
        return this._2016783856magnitude;
    }

    public function set magnitude(param1:int):void {
        var _loc2_:Object = this._2016783856magnitude;
        if (_loc2_ !== param1) {
            this._2016783856magnitude = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "magnitude", _loc2_, param1));
        }
    }

    public function get storePercent():int {
        return this._358052900storePercent;
    }

    public function set storePercent(param1:int):void {
        var _loc2_:Object = this._358052900storePercent;
        if (_loc2_ !== param1) {
            this._358052900storePercent = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "storePercent", _loc2_, param1));
        }
    }

    public function get resLimt():int {
        return this._1096322212resLimt;
    }

    public function set resLimt(param1:int):void {
        var _loc2_:Object = this._1096322212resLimt;
        if (_loc2_ !== param1) {
            this._1096322212resLimt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "resLimt", _loc2_, param1));
        }
    }

    public function get storeTypeId():int {
        return this._1795184074storeTypeId;
    }

    public function set storeTypeId(param1:int):void {
        var _loc2_:Object = this._1795184074storeTypeId;
        if (_loc2_ !== param1) {
            this._1795184074storeTypeId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "storeTypeId", _loc2_, param1));
        }
    }

    public function get storage():int {
        return this._1884274053storage;
    }

    public function set storage(param1:int):void {
        var _loc2_:Object = this._1884274053storage;
        if (_loc2_ !== param1) {
            this._1884274053storage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "storage", _loc2_, param1));
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
