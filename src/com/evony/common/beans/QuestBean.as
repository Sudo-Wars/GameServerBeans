package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

public class QuestBean extends Object implements IEventDispatcher {

    public function QuestBean(param1:Object = null) {
        var _loc2_:Object = null;
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        this.targetsArray = new ArrayCollection();
        if (param1) {
            if (param1.manual != null) {
                this.manual = param1.manual;
            }
            if (param1.isFinish != null) {
                this.isFinish = param1.isFinish;
            }
            if (param1.name != null) {
                this.name = param1.name;
            }
            if (param1.description != null) {
                this.description = param1.description;
            }
            if (param1.questId != null) {
                this.questId = param1.questId;
            }
            if (param1.isCard != null) {
                this.isCard = param1.isCard;
            }
            if (param1.targets) {
                for each(_loc2_ in param1.targets) {
                    this.targetsArray.addItem(new QuestTargetBean(_loc2_));
                }
            }
            if (param1.award != null) {
                this.award = param1.award;
            }
        }
    }

    private var _1081415738manual:String;
    private var _600408483isFinish:Boolean;
    private var _3373707name:String;
    private var _1724546052description:String;
    private var _655126941questId:int;
    private var _1180608678isCard:Boolean;
    private var _328471159targetsArray:ArrayCollection;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _93223517award:String;

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

    public function get manual():String {
        return this._1081415738manual;
    }

    public function set manual(param1:String):void {
        var _loc2_:Object = this._1081415738manual;
        if (_loc2_ !== param1) {
            this._1081415738manual = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "manual", _loc2_, param1));
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

    public function get isCard():Boolean {
        return this._1180608678isCard;
    }

    public function set isCard(param1:Boolean):void {
        var _loc2_:Object = this._1180608678isCard;
        if (_loc2_ !== param1) {
            this._1180608678isCard = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "isCard", _loc2_, param1));
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

    public function get questId():int {
        return this._655126941questId;
    }

    public function set questId(param1:int):void {
        var _loc2_:Object = this._655126941questId;
        if (_loc2_ !== param1) {
            this._655126941questId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "questId", _loc2_, param1));
        }
    }

    public function get award():String {
        return this._93223517award;
    }

    public function set award(param1:String):void {
        var _loc2_:Object = this._93223517award;
        if (_loc2_ !== param1) {
            this._93223517award = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "award", _loc2_, param1));
        }
    }

    public function get targetsArray():ArrayCollection {
        return this._328471159targetsArray;
    }

    public function set targetsArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._328471159targetsArray;
        if (_loc2_ !== param1) {
            this._328471159targetsArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "targetsArray", _loc2_, param1));
        }
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

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
