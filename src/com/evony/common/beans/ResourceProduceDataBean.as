package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class ResourceProduceDataBean extends Object implements IEventDispatcher {

    public function ResourceProduceDataBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.armyPercentage != null) {
                this.armyPercentage = param1.armyPercentage;
            }
            if (param1.commenceRate != null) {
                this.commenceRate = param1.commenceRate;
            }
            if (param1.productionCapacity != null) {
                this.productionCapacity = param1.productionCapacity;
            }
            if (param1.typeid != null) {
                this.typeid = param1.typeid;
            }
            if (param1.totalOutput != null) {
                this.totalOutput = param1.totalOutput;
            }
            if (param1.cimeliaPercentage != null) {
                this.cimeliaPercentage = param1.cimeliaPercentage;
            }
            if (param1.fieldPercentage != null) {
                this.fieldPercentage = param1.fieldPercentage;
            }
            if (param1.commenceDemands != null) {
                this.commenceDemands = param1.commenceDemands;
            }
            if (param1.heroPercentage != null) {
                this.heroPercentage = param1.heroPercentage;
            }
            if (param1.maxLabour != null) {
                this.maxLabour = param1.maxLabour;
            }
            if (param1.naturalPercentage != null) {
                this.naturalPercentage = param1.naturalPercentage;
            }
            if (param1.basicOutput != null) {
                this.basicOutput = param1.basicOutput;
            }
            if (param1.technologicalPercentage != null) {
                this.technologicalPercentage = param1.technologicalPercentage;
            }
        }
    }

    private var _1308753897armyPercentage:Number;
    private var _313448791commenceRate:int;
    private var _2043715731productionCapacity:int;
    private var _858802731typeid:int;
    private var _849060507totalOutput:int;
    private var _2028158848cimeliaPercentage:int;
    private var _401632820heroPercentage:int;
    private var _859635508fieldPercentage:int;
    private var _1261923249commenceDemands:int;
    private var _795443933maxLabour:int;
    private var _1141868451naturalPercentage:int;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _940015921basicOutput:int;
    private var _488102284technologicalPercentage:int;

    public function get cimeliaPercentage():int {
        return this._2028158848cimeliaPercentage;
    }

    public function set cimeliaPercentage(param1:int):void {
        var _loc2_:Object = this._2028158848cimeliaPercentage;
        if (_loc2_ !== param1) {
            this._2028158848cimeliaPercentage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "cimeliaPercentage", _loc2_, param1));
        }
    }

    public function get productionCapacity():int {
        return this._2043715731productionCapacity;
    }

    public function set productionCapacity(param1:int):void {
        var _loc2_:Object = this._2043715731productionCapacity;
        if (_loc2_ !== param1) {
            this._2043715731productionCapacity = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "productionCapacity", _loc2_, param1));
        }
    }

    public function get armyPercentage():Number {
        return this._1308753897armyPercentage;
    }

    public function set armyPercentage(param1:Number):void {
        var _loc2_:Object = this._1308753897armyPercentage;
        if (_loc2_ !== param1) {
            this._1308753897armyPercentage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "armyPercentage", _loc2_, param1));
        }
    }

    public function get technologicalPercentage():int {
        return this._488102284technologicalPercentage;
    }

    public function set technologicalPercentage(param1:int):void {
        var _loc2_:Object = this._488102284technologicalPercentage;
        if (_loc2_ !== param1) {
            this._488102284technologicalPercentage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "technologicalPercentage", _loc2_, param1));
        }
    }

    public function get maxLabour():int {
        return this._795443933maxLabour;
    }

    public function set maxLabour(param1:int):void {
        var _loc2_:Object = this._795443933maxLabour;
        if (_loc2_ !== param1) {
            this._795443933maxLabour = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maxLabour", _loc2_, param1));
        }
    }

    public function get commenceDemands():int {
        return this._1261923249commenceDemands;
    }

    public function set commenceDemands(param1:int):void {
        var _loc2_:Object = this._1261923249commenceDemands;
        if (_loc2_ !== param1) {
            this._1261923249commenceDemands = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "commenceDemands", _loc2_, param1));
        }
    }

    public function get fieldPercentage():int {
        return this._859635508fieldPercentage;
    }

    public function set fieldPercentage(param1:int):void {
        var _loc2_:Object = this._859635508fieldPercentage;
        if (_loc2_ !== param1) {
            this._859635508fieldPercentage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "fieldPercentage", _loc2_, param1));
        }
    }

    public function get naturalPercentage():int {
        return this._1141868451naturalPercentage;
    }

    public function set naturalPercentage(param1:int):void {
        var _loc2_:Object = this._1141868451naturalPercentage;
        if (_loc2_ !== param1) {
            this._1141868451naturalPercentage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "naturalPercentage", _loc2_, param1));
        }
    }

    public function get heroPercentage():int {
        return this._401632820heroPercentage;
    }

    public function set heroPercentage(param1:int):void {
        var _loc2_:Object = this._401632820heroPercentage;
        if (_loc2_ !== param1) {
            this._401632820heroPercentage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "heroPercentage", _loc2_, param1));
        }
    }

    public function get basicOutput():int {
        return this._940015921basicOutput;
    }

    public function set basicOutput(param1:int):void {
        var _loc2_:Object = this._940015921basicOutput;
        if (_loc2_ !== param1) {
            this._940015921basicOutput = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "basicOutput", _loc2_, param1));
        }
    }

    public function get typeid():int {
        return this._858802731typeid;
    }

    public function set typeid(param1:int):void {
        var _loc2_:Object = this._858802731typeid;
        if (_loc2_ !== param1) {
            this._858802731typeid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "typeid", _loc2_, param1));
        }
    }

    public function get commenceRate():int {
        return this._313448791commenceRate;
    }

    public function set commenceRate(param1:int):void {
        var _loc2_:Object = this._313448791commenceRate;
        if (_loc2_ !== param1) {
            this._313448791commenceRate = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "commenceRate", _loc2_, param1));
        }
    }

    public function get totalOutput():int {
        return this._849060507totalOutput;
    }

    public function set totalOutput(param1:int):void {
        var _loc2_:Object = this._849060507totalOutput;
        if (_loc2_ !== param1) {
            this._849060507totalOutput = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "totalOutput", _loc2_, param1));
        }
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

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
