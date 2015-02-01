package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class ConditionDependTechBean extends Object implements IEventDispatcher {

    public function ConditionDependTechBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.level != null) {
                this.level = param1.level;
            }
            if (param1.curLevel != null) {
                this.curLevel = param1.curLevel;
            }
            if (param1.successFlag != null) {
                this.successFlag = param1.successFlag;
            }
            if (param1.id != null) {
                this.id = param1.id;
            }
        }
    }

    private var _102865796level:int;
    private var _540315940curLevel:int;
    private var _1268712945successFlag:Boolean;
    private var _3355id:int;
    private var _bindingEventDispatcher:EventDispatcher;

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
