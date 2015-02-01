package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class ReportBean extends Object implements IEventDispatcher {

    public function ReportBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.title != null) {
                this.title = param1.title;
            }
            if (param1.startPos != null) {
                this.startPos = param1.startPos;
            }
            if (param1.type != null) {
                this.type = param1.type;
            }
            if (param1.id != null) {
                this.id = param1.id;
            }
            if (param1.armyType != null) {
                this.armyType = param1.armyType;
            }
            if (param1.selected != null) {
                this.selected = param1.selected;
            }
            if (param1.content != null) {
                this.content = param1.content;
            }
            if (param1.isRead != null) {
                this.isRead = param1.isRead;
            }
            if (param1.attack != null) {
                this.attack = param1.attack;
            }
            if (param1.back != null) {
                this.back = param1.back;
            }
            if (param1.eventTime != null) {
                this.eventTime = param1.eventTime;
            }
            if (param1.targetPos != null) {
                this.targetPos = param1.targetPos;
            }
        }
    }

    private var _110371416title:String;

    private var _1316782738startPos:String;
    private var _3575610type:int;
    private var _3355id:int;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _1414939017armyType:int;
    private var _1180158496isRead:int;
    private var _951530617content:String;
    private var _1191572123selected:Boolean;
    private var _1407259064attack:Boolean;
    private var _3015911back:Boolean;
    private var _31415431eventTime:Number;
    private var _815590653targetPos:String;

    public function get eventTime():Number {
        return this._31415431eventTime;
    }

    public function set eventTime(param1:Number):void {
        var _loc2_:Object = this._31415431eventTime;
        if (_loc2_ !== param1) {
            this._31415431eventTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "eventTime", _loc2_, param1));
        }
    }

    public function get targetPos():String {
        return this._815590653targetPos;
    }

    public function set targetPos(param1:String):void {
        var _loc2_:Object = this._815590653targetPos;
        if (_loc2_ !== param1) {
            this._815590653targetPos = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "targetPos", _loc2_, param1));
        }
    }

    public function get startPos():String {
        return this._1316782738startPos;
    }

    public function set startPos(param1:String):void {
        var _loc2_:Object = this._1316782738startPos;
        if (_loc2_ !== param1) {
            this._1316782738startPos = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "startPos", _loc2_, param1));
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

    public function get selected():Boolean {
        return this._1191572123selected;
    }

    public function set selected(param1:Boolean):void {
        var _loc2_:Object = this._1191572123selected;
        if (_loc2_ !== param1) {
            this._1191572123selected = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "selected", _loc2_, param1));
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

    public function get attack():Boolean {
        return this._1407259064attack;
    }

    public function set attack(param1:Boolean):void {
        var _loc2_:Object = this._1407259064attack;
        if (_loc2_ !== param1) {
            this._1407259064attack = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "attack", _loc2_, param1));
        }
    }

    public function get title():String {
        return this._110371416title;
    }

    public function set title(param1:String):void {
        var _loc2_:Object = this._110371416title;
        if (_loc2_ !== param1) {
            this._110371416title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "title", _loc2_, param1));
        }
    }

    public function get back():Boolean {
        return this._3015911back;
    }

    public function set back(param1:Boolean):void {
        var _loc2_:Object = this._3015911back;
        if (_loc2_ !== param1) {
            this._3015911back = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "back", _loc2_, param1));
        }
    }

    public function get armyType():int {
        return this._1414939017armyType;
    }

    public function set armyType(param1:int):void {
        var _loc2_:Object = this._1414939017armyType;
        if (_loc2_ !== param1) {
            this._1414939017armyType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "armyType", _loc2_, param1));
        }
    }

    public function get isRead():int {
        return this._1180158496isRead;
    }

    public function set isRead(param1:int):void {
        var _loc2_:Object = this._1180158496isRead;
        if (_loc2_ !== param1) {
            this._1180158496isRead = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "isRead", _loc2_, param1));
        }
    }

    public function get content():String {
        return this._951530617content;
    }

    public function set content(param1:String):void {
        var _loc2_:Object = this._951530617content;
        if (_loc2_ !== param1) {
            this._951530617content = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "content", _loc2_, param1));
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
