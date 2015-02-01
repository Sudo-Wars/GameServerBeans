package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class BuildingQueueBean extends Object implements IEventDispatcher {

    public function BuildingQueueBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.queueType != null) {
                this.queueType = param1.queueType;
            }
            if (param1.name != null) {
                this.name = param1.name;
            }
            if (param1.status != null) {
                this.status = param1.status;
            }
            if (param1.typeId != null) {
                this.typeId = param1.typeId;
            }
            if (param1.level != null) {
                this.level = param1.level;
            }
            if (param1.positionId != null) {
                this.positionId = param1.positionId;
            }
            if (param1.id != null) {
                this.id = param1.id;
            }
            if (param1.costTime != null) {
                this.costTime = param1.costTime;
            }
        }
    }

    private var _1739445269queueType:int;

    private var _3355id:int;

    private var _bindingEventDispatcher:EventDispatcher;
    private var _892481550status:int;
    private var _3373707name:String;
    private var _858803723typeId:int;
    private var _102865796level:int;
    private var _424687558costTime:Number;
    private var _1381039140positionId:int;

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

    public function get costTime():Number {
        return this._424687558costTime;
    }

    public function set costTime(param1:Number):void {
        var _loc2_:Object = this._424687558costTime;
        if (_loc2_ !== param1) {
            this._424687558costTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "costTime", _loc2_, param1));
        }
    }

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

    public function get queueType():int {
        return this._1739445269queueType;
    }

    public function set queueType(param1:int):void {
        var _loc2_:Object = this._1739445269queueType;
        if (_loc2_ !== param1) {
            this._1739445269queueType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "queueType", _loc2_, param1));
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

    public function removeEventListener(param1:String, param2:Function, param3:Boolean = false):void {
        this._bindingEventDispatcher.removeEventListener(param1, param2, param3);
    }

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
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
