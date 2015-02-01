package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

public class ConditionBean extends Object implements IEventDispatcher {

    public function ConditionBean(param1:Object = null) {
        var _loc2_:Object = null;
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        this.itemsArray = new ArrayCollection();
        this.techsArray = new ArrayCollection();
        this.buildingsArray = new ArrayCollection();
        if (param1) {
            if (param1.stone != null) {
                this.stone = param1.stone;
            }
            if (param1.gold != null) {
                this.gold = param1.gold;
            }
            if (param1.iron != null) {
                this.iron = param1.iron;
            }
            if (param1.destructTime != null) {
                this.destructTime = param1.destructTime;
            }
            if (param1.items) {
                for each(_loc2_ in param1.items) {
                    this.itemsArray.addItem(new ConditionDependItemBean(_loc2_));
                }
            }
            if (param1.techs) {
                for each(_loc2_ in param1.techs) {
                    this.techsArray.addItem(new ConditionDependTechBean(_loc2_));
                }
            }
            if (param1.wood != null) {
                this.wood = param1.wood;
            }
            if (param1.population != null) {
                this.population = param1.population;
            }
            if (param1.food != null) {
                this.food = param1.food;
            }
            if (param1.buildings) {
                for each(_loc2_ in param1.buildings) {
                    this.buildingsArray.addItem(new ConditionDependBuildingBean(_loc2_));
                }
            }
            if (param1.time != null) {
                this.time = param1.time;
            }
        }
    }

    private var _109770853stone:int;
    private var _3178592gold:int;
    private var _3241160iron:int;
    private var _895975549destructTime:Number;
    private var _1425640839itemsArray:ArrayCollection;
    private var _1578480708techsArray:ArrayCollection;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _3655341wood:int;
    private var _2023558323population:int;
    private var _3148894food:int;
    private var _1632439642buildingsArray:ArrayCollection;
    private var _3560141time:Number;

    public function get destructTime():Number {
        return this._895975549destructTime;
    }

    public function set destructTime(param1:Number):void {
        var _loc2_:Object = this._895975549destructTime;
        if (_loc2_ !== param1) {
            this._895975549destructTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "destructTime", _loc2_, param1));
        }
    }

    public function get wood():int {
        return this._3655341wood;
    }

    public function set wood(param1:int):void {
        var _loc2_:Object = this._3655341wood;
        if (_loc2_ !== param1) {
            this._3655341wood = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "wood", _loc2_, param1));
        }
    }

    public function get techsArray():ArrayCollection {
        return this._1578480708techsArray;
    }

    public function set techsArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._1578480708techsArray;
        if (_loc2_ !== param1) {
            this._1578480708techsArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "techsArray", _loc2_, param1));
        }
    }

    public function get iron():int {
        return this._3241160iron;
    }

    public function set iron(param1:int):void {
        var _loc2_:Object = this._3241160iron;
        if (_loc2_ !== param1) {
            this._3241160iron = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "iron", _loc2_, param1));
        }
    }

    public function get population():int {
        return this._2023558323population;
    }

    public function set population(param1:int):void {
        var _loc2_:Object = this._2023558323population;
        if (_loc2_ !== param1) {
            this._2023558323population = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "population", _loc2_, param1));
        }
    }

    public function get time():Number {
        return this._3560141time;
    }

    public function set time(param1:Number):void {
        var _loc2_:Object = this._3560141time;
        if (_loc2_ !== param1) {
            this._3560141time = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "time", _loc2_, param1));
        }
    }

    public function get food():int {
        return this._3148894food;
    }

    public function set food(param1:int):void {
        var _loc2_:Object = this._3148894food;
        if (_loc2_ !== param1) {
            this._3148894food = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "food", _loc2_, param1));
        }
    }

    public function get buildingsArray():ArrayCollection {
        return this._1632439642buildingsArray;
    }

    public function set buildingsArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._1632439642buildingsArray;
        if (_loc2_ !== param1) {
            this._1632439642buildingsArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingsArray", _loc2_, param1));
        }
    }

    public function get gold():int {
        return this._3178592gold;
    }

    public function set gold(param1:int):void {
        var _loc2_:Object = this._3178592gold;
        if (_loc2_ !== param1) {
            this._3178592gold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gold", _loc2_, param1));
        }
    }

    public function get stone():int {
        return this._109770853stone;
    }

    public function set stone(param1:int):void {
        var _loc2_:Object = this._109770853stone;
        if (_loc2_ !== param1) {
            this._109770853stone = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "stone", _loc2_, param1));
        }
    }

    public function get itemsArray():ArrayCollection {
        return this._1425640839itemsArray;
    }

    public function set itemsArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._1425640839itemsArray;
        if (_loc2_ !== param1) {
            this._1425640839itemsArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemsArray", _loc2_, param1));
        }
    }

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
    }

    public function addResourceTo(param1:ResourceBean):void {
        param1.food = param1.food + this.food;
        param1.gold = param1.gold + this.gold;
        param1.iron = param1.iron + this.iron;
        param1.stone = param1.stone + this.stone;
        param1.wood = param1.wood + this.wood;
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
