package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class BuyResourceBean extends Object implements IEventDispatcher {

    public function BuyResourceBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.forFood != null) {
                this.forFood = param1.forFood;
            }
            if (param1.foodRemain != null) {
                this.foodRemain = param1.foodRemain;
            }
            if (param1.woodRemain != null) {
                this.woodRemain = param1.woodRemain;
            }
            if (param1.forStone != null) {
                this.forStone = param1.forStone;
            }
            if (param1.ironRemain != null) {
                this.ironRemain = param1.ironRemain;
            }
            if (param1.stoneRemain != null) {
                this.stoneRemain = param1.stoneRemain;
            }
            if (param1.forWood != null) {
                this.forWood = param1.forWood;
            }
            if (param1.forIron != null) {
                this.forIron = param1.forIron;
            }
        }
    }

    private var _252311759stoneRemain:int;

    private var _678500047forIron:int;
    private var _678592313forFood:int;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _449807254foodRemain:int;
    private var _504430457woodRemain:int;
    private var _450629916forStone:int;
    private var _678085866forWood:int;
    private var _1881641644ironRemain:int;

    public function get forFood():int {
        return this._678592313forFood;
    }

    public function set forFood(param1:int):void {
        var _loc2_:Object = this._678592313forFood;
        if (_loc2_ !== param1) {
            this._678592313forFood = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "forFood", _loc2_, param1));
        }
    }

    public function get forIron():int {
        return this._678500047forIron;
    }

    public function set forIron(param1:int):void {
        var _loc2_:Object = this._678500047forIron;
        if (_loc2_ !== param1) {
            this._678500047forIron = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "forIron", _loc2_, param1));
        }
    }

    public function get ironRemain():int {
        return this._1881641644ironRemain;
    }

    public function set ironRemain(param1:int):void {
        var _loc2_:Object = this._1881641644ironRemain;
        if (_loc2_ !== param1) {
            this._1881641644ironRemain = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "ironRemain", _loc2_, param1));
        }
    }

    public function get forStone():int {
        return this._450629916forStone;
    }

    public function set forStone(param1:int):void {
        var _loc2_:Object = this._450629916forStone;
        if (_loc2_ !== param1) {
            this._450629916forStone = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "forStone", _loc2_, param1));
        }
    }

    public function get forWood():int {
        return this._678085866forWood;
    }

    public function set forWood(param1:int):void {
        var _loc2_:Object = this._678085866forWood;
        if (_loc2_ !== param1) {
            this._678085866forWood = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "forWood", _loc2_, param1));
        }
    }

    public function get foodRemain():int {
        return this._449807254foodRemain;
    }

    public function set foodRemain(param1:int):void {
        var _loc2_:Object = this._449807254foodRemain;
        if (_loc2_ !== param1) {
            this._449807254foodRemain = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "foodRemain", _loc2_, param1));
        }
    }

    public function get stoneRemain():int {
        return this._252311759stoneRemain;
    }

    public function set stoneRemain(param1:int):void {
        var _loc2_:Object = this._252311759stoneRemain;
        if (_loc2_ !== param1) {
            this._252311759stoneRemain = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "stoneRemain", _loc2_, param1));
        }
    }

    public function get woodRemain():int {
        return this._504430457woodRemain;
    }

    public function set woodRemain(param1:int):void {
        var _loc2_:Object = this._504430457woodRemain;
        if (_loc2_ !== param1) {
            this._504430457woodRemain = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "woodRemain", _loc2_, param1));
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
