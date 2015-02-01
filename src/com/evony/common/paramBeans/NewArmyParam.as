package com.evony.common.paramBeans {
import com.evony.common.beans.ResourceBean;
import com.evony.common.beans.TroopBean;

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class NewArmyParam extends Object implements IEventDispatcher {

    public function NewArmyParam(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.troops != null) {
                this.troops = new TroopBean(param1.troops);
            }
            if (param1.missionType != null) {
                this.missionType = param1.missionType;
            }
            if (param1.heroId != null) {
                this.heroId = param1.heroId;
            }
            if (param1.resource != null) {
                this.resource = new ResourceBean(param1.resource);
            }
            if (param1.useFlag != null) {
                this.useFlag = param1.useFlag;
            }
            if (param1.backAfterConstruct != null) {
                this.backAfterConstruct = param1.backAfterConstruct;
            }
            if (param1.restTime != null) {
                this.restTime = param1.restTime;
            }
            if (param1.targetPoint != null) {
                this.targetPoint = param1.targetPoint;
            }
        }
    }

    private var _865287327troops:TroopBean;
    private var _1383259878missionType:int;
    private var _1220754763heroId:int;
    private var _148431469useFlag:Boolean;
    private var _2098575745targetPoint:int;
    private var _1570047522backAfterConstruct:Boolean;
    private var _341064690resource:ResourceBean;
    private var _337438527restTime:int;
    private var _bindingEventDispatcher:EventDispatcher;

    public function get restTime():int {
        return this._337438527restTime;
    }

    public function set restTime(param1:int):void {
        var _loc2_:Object = this._337438527restTime;
        if (_loc2_ !== param1) {
            this._337438527restTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "restTime", _loc2_, param1));
        }
    }

    public function get useFlag():Boolean {
        return this._148431469useFlag;
    }

    public function set useFlag(param1:Boolean):void {
        var _loc2_:Object = this._148431469useFlag;
        if (_loc2_ !== param1) {
            this._148431469useFlag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "useFlag", _loc2_, param1));
        }
    }

    public function get resource():ResourceBean {
        return this._341064690resource;
    }

    public function set resource(param1:ResourceBean):void {
        var _loc2_:Object = this._341064690resource;
        if (_loc2_ !== param1) {
            this._341064690resource = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "resource", _loc2_, param1));
        }
    }

    public function get troops():TroopBean {
        return this._865287327troops;
    }

    public function set troops(param1:TroopBean):void {
        var _loc2_:Object = this._865287327troops;
        if (_loc2_ !== param1) {
            this._865287327troops = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "troops", _loc2_, param1));
        }
    }

    public function get missionType():int {
        return this._1383259878missionType;
    }

    public function set missionType(param1:int):void {
        var _loc2_:Object = this._1383259878missionType;
        if (_loc2_ !== param1) {
            this._1383259878missionType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "missionType", _loc2_, param1));
        }
    }

    public function get backAfterConstruct():Boolean {
        return this._1570047522backAfterConstruct;
    }

    public function set backAfterConstruct(param1:Boolean):void {
        var _loc2_:Object = this._1570047522backAfterConstruct;
        if (_loc2_ !== param1) {
            this._1570047522backAfterConstruct = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "backAfterConstruct", _loc2_, param1));
        }
    }

    public function get heroId():int {
        return this._1220754763heroId;
    }

    public function set heroId(param1:int):void {
        var _loc2_:Object = this._1220754763heroId;
        if (_loc2_ !== param1) {
            this._1220754763heroId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "heroId", _loc2_, param1));
        }
    }

    public function get targetPoint():int {
        return this._2098575745targetPoint;
    }

    public function set targetPoint(param1:int):void {
        var _loc2_:Object = this._2098575745targetPoint;
        if (_loc2_ !== param1) {
            this._2098575745targetPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "targetPoint", _loc2_, param1));
        }
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

    public function toObject():Object {
        var _loc1_:Object = new Object();
        if (this.troops == null) {
            _loc1_.troops = null;
        }
        else {
            _loc1_.troops = this.troops.toObject();
        }
        _loc1_.missionType = this.missionType;
        _loc1_.heroId = this.heroId;
        if (this.resource == null) {
            _loc1_.resource = null;
        }
        else {
            _loc1_.resource = this.resource.toObject();
        }
        _loc1_.useFlag = this.useFlag;
        _loc1_.backAfterConstruct = this.backAfterConstruct;
        _loc1_.restTime = this.restTime;
        _loc1_.targetPoint = this.targetPoint;
        return _loc1_;
    }

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
