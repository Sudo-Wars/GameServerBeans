package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class QuestTypeBean extends Object implements IEventDispatcher {

    public function QuestTypeBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.isFinish != null) {
                this.isFinish = param1.isFinish;
            }
            if (param1.name != null) {
                this.name = param1.name;
            }
            if (param1.description != null) {
                this.description = param1.description;
            }
            if (param1.mainId != null) {
                this.mainId = param1.mainId;
            }
            if (param1.typeId != null) {
                this.typeId = param1.typeId;
            }
        }
    }

    private var _600408483isFinish:Boolean;
    private var _3373707name:String;
    private var _1724546052description:String;
    private var _1081572172mainId:int;
    private var _858803723typeId:int;
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

    public function get isFinish():Boolean {
        return this._600408483isFinish;
    }

    public function set isFinish(param1:Boolean):void {
        var _loc2_:Object = this._600408483isFinish;
        if (_loc2_ !== param1) {
            this._600408483isFinish = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "isFinish", _loc2_, param1));
        }
    }

    public function get mainId():int {
        return this._1081572172mainId;
    }

    public function set mainId(param1:int):void {
        var _loc2_:Object = this._1081572172mainId;
        if (_loc2_ !== param1) {
            this._1081572172mainId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mainId", _loc2_, param1));
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

    public function get description():String {
        return this._1724546052description;
    }

    public function set description(param1:String):void {
        var _loc2_:Object = this._1724546052description;
        if (_loc2_ !== param1) {
            this._1724546052description = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "description", _loc2_, param1));
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
