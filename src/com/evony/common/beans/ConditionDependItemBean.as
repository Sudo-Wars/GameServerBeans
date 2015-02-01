package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class ConditionDependItemBean extends Object implements IEventDispatcher {

    public function ConditionDependItemBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.num != null) {
                this.num = param1.num;
            }
            if (param1.curNum != null) {
                this.curNum = param1.curNum;
            }
            if (param1.successFlag != null) {
                this.successFlag = param1.successFlag;
            }
            if (param1.id != null) {
                this.id = param1.id;
            }
        }
    }

    private var _109446num:int;
    private var _1349154522curNum:int;
    private var _1268712945successFlag:Boolean;
    private var _3355id:String;
    private var _bindingEventDispatcher:EventDispatcher;

    public function get num():int {
        return this._109446num;
    }

    public function set num(param1:int):void {
        var _loc2_:Object = this._109446num;
        if (_loc2_ !== param1) {
            this._109446num = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "num", _loc2_, param1));
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

    public function get curNum():int {
        return this._1349154522curNum;
    }

    public function set curNum(param1:int):void {
        var _loc2_:Object = this._1349154522curNum;
        if (_loc2_ !== param1) {
            this._1349154522curNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "curNum", _loc2_, param1));
        }
    }

    public function removeEventListener(param1:String, param2:Function, param3:Boolean = false):void {
        this._bindingEventDispatcher.removeEventListener(param1, param2, param3);
    }

    public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false):void {
        this._bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
    }

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
    }

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
