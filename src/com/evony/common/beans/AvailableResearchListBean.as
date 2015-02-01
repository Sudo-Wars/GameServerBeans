package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class AvailableResearchListBean extends Object implements IEventDispatcher {

    public function AvailableResearchListBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.avalevel != null) {
                this.avalevel = param1.avalevel;
            }
            if (param1.endTime != null) {
                this.endTime = param1.endTime;
            }
            if (param1.upgradeing != null) {
                this.upgradeing = param1.upgradeing;
            }
            if (param1.level != null) {
                this.level = param1.level;
            }
            if (param1.conditionBean != null) {
                this.conditionBean = new ConditionBean(param1.conditionBean);
            }
            if (param1.startTime != null) {
                this.startTime = param1.startTime;
            }
            if (param1.castleId != null) {
                this.castleId = param1.castleId;
            }
            if (param1.typeId != null) {
                this.typeId = param1.typeId;
            }
            if (param1.permition != null) {
                this.permition = param1.permition;
            }
        }
    }

    private var _1607243192endTime:Number;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _1371991915conditionBean:ConditionBean;
    private var _2129294769startTime:Number;
    private var _35872819castleId:Number;
    private var _1999144890upgradeing:Boolean;
    private var _858803723typeId:int;
    private var _102865796level:int;
    private var _1780023352avalevel:int;
    private var _676059661permition:Boolean;

    public function get upgradeing():Boolean {
        return this._1999144890upgradeing;
    }

    public function set upgradeing(param1:Boolean):void {
        var _loc2_:Object = this._1999144890upgradeing;
        if (_loc2_ !== param1) {
            this._1999144890upgradeing = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "upgradeing", _loc2_, param1));
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

    public function get permition():Boolean {
        return this._676059661permition;
    }

    public function set permition(param1:Boolean):void {
        var _loc2_:Object = this._676059661permition;
        if (_loc2_ !== param1) {
            this._676059661permition = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "permition", _loc2_, param1));
        }
    }

    public function get castleId():Number {
        return this._35872819castleId;
    }

    public function set castleId(param1:Number):void {
        var _loc2_:Object = this._35872819castleId;
        if (_loc2_ !== param1) {
            this._35872819castleId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "castleId", _loc2_, param1));
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

    public function get conditionBean():ConditionBean {
        return this._1371991915conditionBean;
    }

    public function set conditionBean(param1:ConditionBean):void {
        var _loc2_:Object = this._1371991915conditionBean;
        if (_loc2_ !== param1) {
            this._1371991915conditionBean = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "conditionBean", _loc2_, param1));
        }
    }

    public function get avalevel():int {
        return this._1780023352avalevel;
    }

    public function set avalevel(param1:int):void {
        var _loc2_:Object = this._1780023352avalevel;
        if (_loc2_ !== param1) {
            this._1780023352avalevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "avalevel", _loc2_, param1));
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

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
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

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
