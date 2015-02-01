package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class ZoneInfoBean extends Object implements IEventDispatcher {

    public function ZoneInfoBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.playerCount != null) {
                this.playerCount = param1.playerCount;
            }
            if (param1.castleCount != null) {
                this.castleCount = param1.castleCount;
            }
            if (param1.name != null) {
                this.name = param1.name;
            }
            if (param1.rate != null) {
                this.rate = param1.rate;
            }
            if (param1.id != null) {
                this.id = param1.id;
            }
        }
    }

    private var _531131054playerCount:int;
    private var _764803337castleCount:int;
    private var _3373707name:String;
    private var _3355id:int;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _3493088rate:int;

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

    public function get rate():int {
        return this._3493088rate;
    }

    public function set rate(param1:int):void {
        var _loc2_:Object = this._3493088rate;
        if (_loc2_ !== param1) {
            this._3493088rate = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rate", _loc2_, param1));
        }
    }

    public function get playerCount():int {
        return this._531131054playerCount;
    }

    public function set playerCount(param1:int):void {
        var _loc2_:Object = this._531131054playerCount;
        if (_loc2_ !== param1) {
            this._531131054playerCount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerCount", _loc2_, param1));
        }
    }

    public function get castleCount():int {
        return this._764803337castleCount;
    }

    public function set castleCount(param1:int):void {
        var _loc2_:Object = this._764803337castleCount;
        if (_loc2_ !== param1) {
            this._764803337castleCount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "castleCount", _loc2_, param1));
        }
    }

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
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

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
