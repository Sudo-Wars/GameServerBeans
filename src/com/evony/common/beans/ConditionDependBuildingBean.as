package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class ConditionDependBuildingBean extends Object implements IEventDispatcher {

    public function ConditionDependBuildingBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.curLevel != null) {
                this.curLevel = param1.curLevel;
            }
            if (param1.successFlag != null) {
                this.successFlag = param1.successFlag;
            }
            if (param1.typeId != null) {
                this.typeId = param1.typeId;
            }
            if (param1.level != null) {
                this.level = param1.level;
            }
        }
    }

    private var _bindingEventDispatcher:EventDispatcher;
    private var _540315940curLevel:int;
    private var _1268712945successFlag:Boolean;
    private var _858803723typeId:int;
    private var _102865796level:int;

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

    public function get successFlag():Boolean {
        return this._1268712945successFlag;
    }

    public function set successFlag(param1:Boolean):void {
        var _loc2_:Object = this._1268712945successFlag;
        if (_loc2_ !== param1) {
            this._1268712945successFlag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "successFlag", _loc2_, param1));
        }
    }

    public function get curLevel():int {
        return this._540315940curLevel;
    }

    public function set curLevel(param1:int):void {
        var _loc2_:Object = this._540315940curLevel;
        if (_loc2_ !== param1) {
            this._540315940curLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "curLevel", _loc2_, param1));
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

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
