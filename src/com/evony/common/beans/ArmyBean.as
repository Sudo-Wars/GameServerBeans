package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

//import autoevony.player.Map;

public class ArmyBean extends Object implements IEventDispatcher {

    public function ArmyBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.armyId != null) {
                this.armyId = param1.armyId;
            }
            if (param1.missionType != null) {
                this.missionType = param1.missionType;
            }
            if (param1.king != null) {
                this.king = param1.king;
            }
            if (param1.resource != null) {
                this.resource = new ResourceBean(param1.resource);
            }
            if (param1.startFieldId != null) {
                this.startFieldId = param1.startFieldId;
            }
            if (param1.targetPosName != null) {
                this.targetPosName = param1.targetPosName;
            }
            if (param1.direction != null) {
                this.direction = param1.direction;
            }
            if (param1.restTime != null) {
                this.restTime = param1.restTime;
            }
            if (param1.startTime != null) {
                this.startTime = param1.startTime;
            }
            if (param1.startPosName != null) {
                this.startPosName = param1.startPosName;
            }
            if (param1.heroLevel != null) {
                this.heroLevel = param1.heroLevel;
            }
            if (param1.reachTime != null) {
                this.reachTime = param1.reachTime;
            }
            if (param1.hero != null) {
                this.hero = param1.hero;
            }
            if (param1.targetFieldId != null) {
                this.targetFieldId = param1.targetFieldId;
            }
            if (param1.alliance != null) {
                this.alliance = param1.alliance;
            }
            if (param1.troop != null) {
                this.troop = new TroopStrBean(param1.troop);
            }
        }
    }

    private var _1409292392armyId:int;
    private var _1383259878missionType:int;
    private var _3198970hero:String;
    private var _341064690resource:ResourceBean;
    private var _995699469startFieldId:int;
    private var _962590849direction:int;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _1911605294targetPosName:String;
    private var _337438527restTime:Number;
    private var _2129294769startTime:Number;
    private var _526788547startPosName:String;
    private var _2014132310heroLevel:int;
    private var _1134711072reachTime:Number;
    private var _1442694372targetFieldId:int;
    private var _3292055king:String;
    private var _1806944311alliance:String;
    private var _110634834troop:TroopStrBean;

    public function get direction():int {
        return this._962590849direction;
    }

    public function set direction(param1:int):void {
        var _loc2_:Object = this._962590849direction;
        if (_loc2_ !== param1) {
            this._962590849direction = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "direction", _loc2_, param1));
        }
    }

    public function get hero():String {
        return this._3198970hero;
    }

    public function set hero(param1:String):void {
        var _loc2_:Object = this._3198970hero;
        if (_loc2_ !== param1) {
            this._3198970hero = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hero", _loc2_, param1));
        }
    }

    public function get targetCoords():String {
        // FIXME: Map
//        return Map.FieldIdToCoords(this.targetFieldId);
        return "";
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

    public function get king():String {
        return this._3292055king;
    }

    public function set king(param1:String):void {
        var _loc2_:Object = this._3292055king;
        if (_loc2_ !== param1) {
            this._3292055king = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "king", _loc2_, param1));
        }
    }

    public function get armyId():int {
        return this._1409292392armyId;
    }

    public function set armyId(param1:int):void {
        var _loc2_:Object = this._1409292392armyId;
        if (_loc2_ !== param1) {
            this._1409292392armyId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "armyId", _loc2_, param1));
        }
    }

    public function get startCoords():String {
        // FIXME: MAP
//        return Map.FieldIdToCoords(this.startFieldId);
        return "";
    }

    public function get targetPosName():String {
        return this._1911605294targetPosName;
    }

    public function set targetPosName(param1:String):void {
        var _loc2_:Object = this._1911605294targetPosName;
        if (_loc2_ !== param1) {
            this._1911605294targetPosName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "targetPosName", _loc2_, param1));
        }
    }

    public function get heroLevel():int {
        return this._2014132310heroLevel;
    }

    public function set heroLevel(param1:int):void {
        var _loc2_:Object = this._2014132310heroLevel;
        if (_loc2_ !== param1) {
            this._2014132310heroLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "heroLevel", _loc2_, param1));
        }
    }

    public function get startPosName():String {
        return this._526788547startPosName;
    }

    public function set startPosName(param1:String):void {
        var _loc2_:Object = this._526788547startPosName;
        if (_loc2_ !== param1) {
            this._526788547startPosName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "startPosName", _loc2_, param1));
        }
    }

    public function get alliance():String {
        return this._1806944311alliance;
    }

    public function set alliance(param1:String):void {
        var _loc2_:Object = this._1806944311alliance;
        if (_loc2_ !== param1) {
            this._1806944311alliance = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "alliance", _loc2_, param1));
        }
    }

    public function get restTime():Number {
        return this._337438527restTime;
    }

    public function set restTime(param1:Number):void {
        var _loc2_:Object = this._337438527restTime;
        if (_loc2_ !== param1) {
            this._337438527restTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "restTime", _loc2_, param1));
        }
    }

    public function get startTime():Number {
        return this._2129294769startTime;
    }

    public function set startTime(param1:Number):void {
        var _loc2_:Object = this._2129294769startTime;
        if (_loc2_ !== param1) {
            this._2129294769startTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "startTime", _loc2_, param1));
        }
    }

    public function get troop():TroopStrBean {
        return this._110634834troop;
    }

    public function set troop(param1:TroopStrBean):void {
        var _loc2_:Object = this._110634834troop;
        if (_loc2_ !== param1) {
            this._110634834troop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "troop", _loc2_, param1));
        }
    }

    public function get targetFieldId():int {
        return this._1442694372targetFieldId;
    }

    public function set targetFieldId(param1:int):void {
        var _loc2_:Object = this._1442694372targetFieldId;
        if (_loc2_ !== param1) {
            this._1442694372targetFieldId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "targetFieldId", _loc2_, param1));
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

    public function get reachTime():Number {
        return this._1134711072reachTime;
    }

    public function set reachTime(param1:Number):void {
        var _loc2_:Object = this._1134711072reachTime;
        if (_loc2_ !== param1) {
            this._1134711072reachTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "reachTime", _loc2_, param1));
        }
    }

    public function get startFieldId():int {
        return this._995699469startFieldId;
    }

    public function set startFieldId(param1:int):void {
        var _loc2_:Object = this._995699469startFieldId;
        if (_loc2_ !== param1) {
            this._995699469startFieldId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "startFieldId", _loc2_, param1));
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
