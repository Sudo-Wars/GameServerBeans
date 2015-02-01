package com.evony.common.beans {

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

public class FieldBean extends Object implements IEventDispatcher {

    public function FieldBean(param1:Object = null) {
        var _loc2_:Object = null;
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        this.armysArray = new ArrayCollection();
        if (param1) {
            if (param1.statu != null) {
                this.statu = param1.statu;
            }
            if (param1.name != null) {
                this.name = param1.name;
            }
            if (param1.type != null) {
                this.type = param1.type;
            }
            if (param1.level != null) {
                this.level = param1.level;
            }
            if (param1.armys) {
                for each(_loc2_ in param1.armys) {
                    this.armysArray.addItem(new ArmyBean(_loc2_));
                }
            }
            if (param1.id != null) {
                this.id = param1.id;
            }
        }
    }

    private var _3355id:int;
    private var _109757601statu:int;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _3373707name:String;
    private var _3575610type:int;
    private var _102865796level:int;
    private var _1710868093armysArray:ArrayCollection;

    public function get armysArray():ArrayCollection {
        return this._1710868093armysArray;
    }

    public function set armysArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._1710868093armysArray;
        if (_loc2_ !== param1) {
            this._1710868093armysArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "armysArray", _loc2_, param1));
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

    public function get coords():String {
        // TODO: Fix MAP
//        return Map.FieldIdToCoords(this.id);
        return "";
    }

    public function get statu():int {
        return this._109757601statu;
    }

    public function set statu(param1:int):void {
        var _loc2_:Object = this._109757601statu;
        if (_loc2_ !== param1) {
            this._109757601statu = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "statu", _loc2_, param1));
        }
    }

    public function get type():int {
        return this._3575610type;
    }

    public function set type(param1:int):void {
        var _loc2_:Object = this._3575610type;
        if (_loc2_ !== param1) {
            this._3575610type = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "type", _loc2_, param1));
        }
    }

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false):void {
        this._bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
    }

    public function removeEventListener(param1:String, param2:Function, param3:Boolean = false):void {
        this._bindingEventDispatcher.removeEventListener(param1, param2, param3);
    }

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
