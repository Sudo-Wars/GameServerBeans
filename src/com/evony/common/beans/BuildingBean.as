package com.evony.common.beans {
import com.evony.common.constants.BuildingConstants;

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class BuildingBean extends Object implements IEventDispatcher {

    public function BuildingBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.endTime != null) {
                this.endTime = param1.endTime;
            }
            if (param1.status != null) {
                this.status = param1.status;
            }
            if (param1.name != null) {
                this.name = param1.name;
            }
            if (param1.startTime != null) {
                this.startTime = param1.startTime;
            }
            if (param1.typeId != null) {
                this.typeId = param1.typeId;
            }
            if (param1.positionId != null) {
                this.positionId = param1.positionId;
            }
            if (param1.level != null) {
                this.level = param1.level;
            }
        }
    }

    private var _bindingEventDispatcher:EventDispatcher;
    private var _1607243192endTime:Number;
    private var _892481550status:int;
    private var _3373707name:String;
    private var _2129294769startTime:Number;
    private var _858803723typeId:int;
    private var _1381039140positionId:int;
    private var _102865796level:int;

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

    public function get level():int {
        return this._102865796level;
    }

    public function set level(param1:int):void {
        var _loc2_:Object = this._102865796level;
        if (_loc2_ !== param1) {
            this._102865796level = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "level", _loc2_, param1));
        }
    }

    public function get startTime():Number {
        return this._2129294769startTime;
    }

    public function set startTime(param1:Number):void {
        var _loc2_:Object = this._2129294769startTime;
        if (_loc2_ !== param1) {
            this._2129294769startTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "startTime", _loc2_, param1));
        }
    }

    public function get positionId():int {
        return this._1381039140positionId;
    }

    public function set positionId(param1:int):void {
        var _loc2_:Object = this._1381039140positionId;
        if (_loc2_ !== param1) {
            this._1381039140positionId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "positionId", _loc2_, param1));
        }
    }

    public function get status():int {
        return this._892481550status;
    }

    public function set status(param1:int):void {
        var _loc2_:Object = this._892481550status;
        if (_loc2_ !== param1) {
            this._892481550status = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "status", _loc2_, param1));
        }
    }

    public function get typeId():int {
        return this._858803723typeId;
    }

    public function set typeId(param1:int):void {
        var _loc2_:Object = this._858803723typeId;
        if (_loc2_ !== param1) {
            this._858803723typeId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "typeId", _loc2_, param1));
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

    public function copyTo(param1:BuildingBean):void {
        param1.endTime = this.endTime;
        param1.status = this.status;
        param1.name = this.name;
        param1.startTime = this.startTime;
        param1.typeId = this.typeId;
        param1.positionId = this.positionId;
        param1.level = this.level;
    }

    public function getLevel(param1:Boolean):int {
        if (param1) {
            switch (this.status) {
                case BuildingConstants.STATUS_UPGRADING:
                    return this.level + 1;
                case BuildingConstants.STATUS_DESTRUCTING:
                    return this.level - 1;
            }
        }
        return this.level;
    }

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
