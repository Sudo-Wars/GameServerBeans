package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

public class AllProduceBean extends Object implements IEventDispatcher {

    public function AllProduceBean(param1:Object = null) {
        var _loc2_:Object = null;
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        this.allProduceQueueArray = new ArrayCollection();
        if (param1) {
            if (param1.allProduceQueue) {
                for each(_loc2_ in param1.allProduceQueue) {
                    this.allProduceQueueArray.addItem(new ProduceBean(_loc2_));
                }
            }
            if (param1.positionId != null) {
                this.positionId = param1.positionId;
            }
        }
    }

    private var _267085529allProduceQueueArray:ArrayCollection;
    private var _1381039140positionId:int;
    private var _bindingEventDispatcher:EventDispatcher;

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

    public function get allProduceQueueArray():ArrayCollection {
        return this._267085529allProduceQueueArray;
    }

    public function set allProduceQueueArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._267085529allProduceQueueArray;
        if (_loc2_ !== param1) {
            this._267085529allProduceQueueArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "allProduceQueueArray", _loc2_, param1));
        }
    }

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
    }

    public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false):void {
        this._bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
    }

    public function removeEventListener(param1:String, param2:Function, param3:Boolean = false):void {
        this._bindingEventDispatcher.removeEventListener(param1, param2, param3);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
