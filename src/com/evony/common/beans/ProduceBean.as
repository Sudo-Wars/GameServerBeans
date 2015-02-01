package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class ProduceBean extends Object implements IEventDispatcher {

    public function ProduceBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.costTime != null) {
                this.costTime = param1.costTime;
            }
            if (param1.endTime != null) {
                this.endTime = param1.endTime;
            }
            if (param1.queueId != null) {
                this.queueId = param1.queueId;
            }
            if (param1.num != null) {
                this.num = param1.num;
            }
            if (param1.type != null) {
                this.type = param1.type;
            }
        }
    }

    private var _424687558costTime:Number;
    private var _1607243192endTime:Number;
    private var _109446num:int;
    private var _655172108queueId:int;
    private var _3575610type:int;
    private var _bindingEventDispatcher:EventDispatcher;

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

    public function get queueId():int {
        return this._655172108queueId;
    }

    public function set queueId(param1:int):void {
        var _loc2_:Object = this._655172108queueId;
        if (_loc2_ !== param1) {
            this._655172108queueId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "queueId", _loc2_, param1));
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
