package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class QuestTargetBean extends Object implements IEventDispatcher {

    public function QuestTargetBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.name != null) {
                this.name = param1.name;
            }
            if (param1.finished != null) {
                this.finished = param1.finished;
            }
        }
    }

    private var _3373707name:String;
    private var _673660814finished:Boolean;
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

    public function get finished():Boolean {
        return this._673660814finished;
    }

    public function set finished(param1:Boolean):void {
        var _loc2_:Object = this._673660814finished;
        if (_loc2_ !== param1) {
            this._673660814finished = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "finished", _loc2_, param1));
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
