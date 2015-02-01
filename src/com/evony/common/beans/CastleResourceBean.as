package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class CastleResourceBean extends Object implements IEventDispatcher {

    public function CastleResourceBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.texRate != null) {
                this.texRate = param1.texRate;
            }
            if (param1.buildPeople != null) {
                this.buildPeople = param1.buildPeople;
            }
            if (param1.stone != null) {
                this.stone = new ResourceInfoBean(param1.stone);
            }
            if (param1.populationDirection != null) {
                this.populationDirection = param1.populationDirection;
            }
            if (param1.gold != null) {
                this.gold = param1.gold;
            }
            if (param1.iron != null) {
                this.iron = new ResourceInfoBean(param1.iron);
            }
            if (param1.curPopulation != null) {
                this.curPopulation = param1.curPopulation;
            }
            if (param1.complaint != null) {
                this.complaint = param1.complaint;
            }
            if (param1.taxIncome != null) {
                this.taxIncome = param1.taxIncome;
            }
            if (param1.wood != null) {
                this.wood = new ResourceInfoBean(param1.wood);
            }
            if (param1.food != null) {
                this.food = new ResourceInfoBean(param1.food);
            }
            if (param1.support != null) {
                this.support = param1.support;
            }
            if (param1.troopCostFood != null) {
                this.troopCostFood = param1.troopCostFood;
            }
            if (param1.workPeople != null) {
                this.workPeople = param1.workPeople;
            }
            if (param1.herosSalary != null) {
                this.herosSalary = param1.herosSalary;
            }
            if (param1.maxPopulation != null) {
                this.maxPopulation = param1.maxPopulation;
            }
        }
    }

    private var _1418848857texRate:int;

    private var _109770853stone:ResourceInfoBean;
    private var _2140939619buildPeople:int;
    private var _359111346populationDirection:int;
    private var _3178592gold:Number;
    private var _3241160iron:ResourceInfoBean;
    private var _216564141curPopulation:int;
    private var _1403061077complaint:int;
    private var _636575436taxIncome:int;
    private var _3148894food:ResourceInfoBean;
    private var _996698880workPeople:int;
    private var _1854767153support:int;
    private var _1007641795troopCostFood:Number;
    private var _3655341wood:ResourceInfoBean;
    private var _1167488739herosSalary:int;
    private var _1099040721maxPopulation:int;
    private var _bindingEventDispatcher:EventDispatcher;

    public function get buildPeople():int {
        return this._2140939619buildPeople;
    }

    public function set buildPeople(param1:int):void {
        var _loc2_:Object = this._2140939619buildPeople;
        if (_loc2_ !== param1) {
            this._2140939619buildPeople = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildPeople", _loc2_, param1));
        }
    }

    public function get workPeople():int {
        return this._996698880workPeople;
    }

    public function set workPeople(param1:int):void {
        var _loc2_:Object = this._996698880workPeople;
        if (_loc2_ !== param1) {
            this._996698880workPeople = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "workPeople", _loc2_, param1));
        }
    }

    public function get complaint():int {
        return this._1403061077complaint;
    }

    public function set complaint(param1:int):void {
        var _loc2_:Object = this._1403061077complaint;
        if (_loc2_ !== param1) {
            this._1403061077complaint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "complaint", _loc2_, param1));
        }
    }

    public function get curPopulation():int {
        return this._216564141curPopulation;
    }

    public function set curPopulation(param1:int):void {
        var _loc2_:Object = this._216564141curPopulation;
        if (_loc2_ !== param1) {
            this._216564141curPopulation = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "curPopulation", _loc2_, param1));
        }
    }

    public function get texRate():int {
        return this._1418848857texRate;
    }

    public function set texRate(param1:int):void {
        var _loc2_:Object = this._1418848857texRate;
        if (_loc2_ !== param1) {
            this._1418848857texRate = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "texRate", _loc2_, param1));
        }
    }

    public function get maxWorkers():Number {
        return this.food.workPeople + this.wood.workPeople + this.stone.workPeople + this.iron.workPeople;
    }

    public function get populationDirection():int {
        return this._359111346populationDirection;
    }

    public function set populationDirection(param1:int):void {
        var _loc2_:Object = this._359111346populationDirection;
        if (_loc2_ !== param1) {
            this._359111346populationDirection = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "populationDirection", _loc2_, param1));
        }
    }

    public function get wood():ResourceInfoBean {
        return this._3655341wood;
    }

    public function set wood(param1:ResourceInfoBean):void {
        var _loc2_:Object = this._3655341wood;
        if (_loc2_ !== param1) {
            this._3655341wood = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "wood", _loc2_, param1));
        }
    }

    public function get troopCostFood():Number {
        return this._1007641795troopCostFood;
    }

    public function set troopCostFood(param1:Number):void {
        var _loc2_:Object = this._1007641795troopCostFood;
        if (_loc2_ !== param1) {
            this._1007641795troopCostFood = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "troopCostFood", _loc2_, param1));
        }
    }

    public function get taxIncome():int {
        return this._636575436taxIncome;
    }

    public function set taxIncome(param1:int):void {
        var _loc2_:Object = this._636575436taxIncome;
        if (_loc2_ !== param1) {
            this._636575436taxIncome = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "taxIncome", _loc2_, param1));
        }
    }

    public function get iron():ResourceInfoBean {
        return this._3241160iron;
    }

    public function set iron(param1:ResourceInfoBean):void {
        var _loc2_:Object = this._3241160iron;
        if (_loc2_ !== param1) {
            this._3241160iron = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "iron", _loc2_, param1));
        }
    }

    public function get support():int {
        return this._1854767153support;
    }

    public function set support(param1:int):void {
        var _loc2_:Object = this._1854767153support;
        if (_loc2_ !== param1) {
            this._1854767153support = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "support", _loc2_, param1));
        }
    }

    public function get maxPopulation():int {
        return this._1099040721maxPopulation;
    }

    public function set maxPopulation(param1:int):void {
        var _loc2_:Object = this._1099040721maxPopulation;
        if (_loc2_ !== param1) {
            this._1099040721maxPopulation = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maxPopulation", _loc2_, param1));
        }
    }

    public function get food():ResourceInfoBean {
        return this._3148894food;
    }

    public function set food(param1:ResourceInfoBean):void {
        var _loc2_:Object = this._3148894food;
        if (_loc2_ !== param1) {
            this._3148894food = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "food", _loc2_, param1));
        }
    }

    public function get gold():Number {
        return this._3178592gold;
    }

    public function set gold(param1:Number):void {
        var _loc2_:Object = this._3178592gold;
        if (_loc2_ !== param1) {
            this._3178592gold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gold", _loc2_, param1));
        }
    }

    public function get herosSalary():int {
        return this._1167488739herosSalary;
    }

    public function set herosSalary(param1:int):void {
        var _loc2_:Object = this._1167488739herosSalary;
        if (_loc2_ !== param1) {
            this._1167488739herosSalary = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "herosSalary", _loc2_, param1));
        }
    }

    public function get stone():ResourceInfoBean {
        return this._109770853stone;
    }

    public function set stone(param1:ResourceInfoBean):void {
        var _loc2_:Object = this._109770853stone;
        if (_loc2_ !== param1) {
            this._109770853stone = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "stone", _loc2_, param1));
        }
    }

    public function get consumeRate():Number {
        var _loc1_:Number = this.troopCostFood - this.food.increaseRate;
        return _loc1_ > 0 ? _loc1_ : 0;
    }

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
    }

    public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false):void {
        this._bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
    }

    public function copyTo(param1:CastleResourceBean):void {
        param1.texRate = this.texRate;
        param1.buildPeople = this.buildPeople;
        if (this.stone == null) {
            param1.stone = null;
        }
        else {
            this.stone.copyTo(param1.stone);
        }
        param1.populationDirection = this.populationDirection;
        param1.gold = this.gold;
        if (this.iron == null) {
            param1.iron = null;
        }
        else {
            this.iron.copyTo(param1.iron);
        }
        param1.curPopulation = this.curPopulation;
        param1.complaint = this.complaint;
        param1.taxIncome = this.taxIncome;
        if (this.wood == null) {
            param1.wood = null;
        }
        else {
            this.wood.copyTo(param1.wood);
        }
        if (this.food == null) {
            param1.food = null;
        }
        else {
            this.food.copyTo(param1.food);
        }
        param1.support = this.support;
        param1.troopCostFood = this.troopCostFood;
        param1.workPeople = this.workPeople;
        param1.herosSalary = this.herosSalary;
        param1.maxPopulation = this.maxPopulation;
    }

    public function removeEventListener(param1:String, param2:Function, param3:Boolean = false):void {
        this._bindingEventDispatcher.removeEventListener(param1, param2, param3);
    }

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
