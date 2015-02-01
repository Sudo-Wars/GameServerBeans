package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class TroopBean extends Object implements IEventDispatcher {

    public function TroopBean(param1:Object = null) {
        this._695749757typOrder = new Array();
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.heavyCavalry != null) {
                this.heavyCavalry = param1.heavyCavalry;
            }
            if (param1.catapult != null) {
                this.catapult = param1.catapult;
            }
            if (param1.archer != null) {
                this.archer = param1.archer;
            }
            if (param1.lightCavalry != null) {
                this.lightCavalry = param1.lightCavalry;
            }
            if (param1.ballista != null) {
                this.ballista = param1.ballista;
            }
            if (param1.militia != null) {
                this.militia = param1.militia;
            }
            if (param1.carriage != null) {
                this.carriage = param1.carriage;
            }
            if (param1.scouter != null) {
                this.scouter = param1.scouter;
            }
            if (param1.peasants != null) {
                this.peasants = param1.peasants;
            }
            if (param1.batteringRam != null) {
                this.batteringRam = param1.batteringRam;
            }
            if (param1.swordsmen != null) {
                this.swordsmen = param1.swordsmen;
            }
            if (param1.pikemen != null) {
                this.pikemen = param1.pikemen;
            }
        }
    }

    private var _570808349pikemen:int;
    private var _1671895235heavyCavalry:int;
    private var _47090712catapult:int;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _1409605757archer:int;
    private var _1821715860lightCavalry:int;
    private var _1062697427militia:int;
    private var _1914804330ballista:int;
    private var _5304340carriage:int;
    private var _1924105259scouter:int;
    private var _43947821peasants:int;
    private var _2135247928batteringRam:int;
    private var _695749757typOrder:Array;
    private var _1669530624swordsmen:int;

    public function get swordsmen():int {
        return this._1669530624swordsmen;
    }

    public function set swordsmen(param1:int):void {
        var _loc2_:Object = this._1669530624swordsmen;
        if (_loc2_ !== param1) {
            this._1669530624swordsmen = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "swordsmen", _loc2_, param1));
        }
    }

    public function get archer():int {
        return this._1409605757archer;
    }

    public function set archer(param1:int):void {
        var _loc2_:Object = this._1409605757archer;
        if (_loc2_ !== param1) {
            this._1409605757archer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "archer", _loc2_, param1));
        }
    }

    public function get typOrder():Array {
        return this._695749757typOrder;
    }

    public function set typOrder(param1:Array):void {
        var _loc2_:Object = this._695749757typOrder;
        if (_loc2_ !== param1) {
            this._695749757typOrder = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "typOrder", _loc2_, param1));
        }
    }

    public function get lightCavalry():int {
        return this._1821715860lightCavalry;
    }

    public function set lightCavalry(param1:int):void {
        var _loc2_:Object = this._1821715860lightCavalry;
        if (_loc2_ !== param1) {
            this._1821715860lightCavalry = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lightCavalry", _loc2_, param1));
        }
    }

    public function get ballista():int {
        return this._1914804330ballista;
    }

    public function set ballista(param1:int):void {
        var _loc2_:Object = this._1914804330ballista;
        if (_loc2_ !== param1) {
            this._1914804330ballista = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "ballista", _loc2_, param1));
        }
    }

    public function get carriage():int {
        return this._5304340carriage;
    }

    public function set carriage(param1:int):void {
        var _loc2_:Object = this._5304340carriage;
        if (_loc2_ !== param1) {
            this._5304340carriage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "carriage", _loc2_, param1));
        }
    }

    public function get catapult():int {
        return this._47090712catapult;
    }

    public function set catapult(param1:int):void {
        var _loc2_:Object = this._47090712catapult;
        if (_loc2_ !== param1) {
            this._47090712catapult = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "catapult", _loc2_, param1));
        }
    }

    public function get scouter():int {
        return this._1924105259scouter;
    }

    public function set scouter(param1:int):void {
        var _loc2_:Object = this._1924105259scouter;
        if (_loc2_ !== param1) {
            this._1924105259scouter = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "scouter", _loc2_, param1));
        }
    }

    public function get foodConsumeRate():Number {
        return 2 * this.peasants + 3 * this.militia + 5 * this.scouter + 6 * this.pikemen + 7 * this.swordsmen + 9 * this.archer + 18 * this.lightCavalry + 35 * this.heavyCavalry + 10 * this.carriage + 50 * this.ballista + 100 * this.batteringRam + 250 * this.catapult;
    }

    public function get heavyCavalry():int {
        return this._1671895235heavyCavalry;
    }

    public function set heavyCavalry(param1:int):void {
        var _loc2_:Object = this._1671895235heavyCavalry;
        if (_loc2_ !== param1) {
            this._1671895235heavyCavalry = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "heavyCavalry", _loc2_, param1));
        }
    }

    public function get batteringRam():int {
        return this._2135247928batteringRam;
    }

    public function set batteringRam(param1:int):void {
        var _loc2_:Object = this._2135247928batteringRam;
        if (_loc2_ !== param1) {
            this._2135247928batteringRam = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "batteringRam", _loc2_, param1));
        }
    }

    public function get militia():int {
        return this._1062697427militia;
    }

    public function set militia(param1:int):void {
        var _loc2_:Object = this._1062697427militia;
        if (_loc2_ !== param1) {
            this._1062697427militia = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "militia", _loc2_, param1));
        }
    }

    public function get peasants():int {
        return this._43947821peasants;
    }

    public function set peasants(param1:int):void {
        var _loc2_:Object = this._43947821peasants;
        if (_loc2_ !== param1) {
            this._43947821peasants = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "peasants", _loc2_, param1));
        }
    }

    public function get pikemen():int {
        return this._570808349pikemen;
    }

    public function set pikemen(param1:int):void {
        var _loc2_:Object = this._570808349pikemen;
        if (_loc2_ !== param1) {
            this._570808349pikemen = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "pikemen", _loc2_, param1));
        }
    }

    public function count():int {
        return this.archer + this.ballista + this.batteringRam + this.carriage + this.catapult + this.heavyCavalry + this.lightCavalry + this.militia + this.peasants + this.pikemen + this.scouter + this.swordsmen;
    }

    public function toObject():Object {
        var _loc1_:Object = new Object();
        _loc1_.heavyCavalry = this.heavyCavalry;
        _loc1_.catapult = this.catapult;
        _loc1_.archer = this.archer;
        _loc1_.lightCavalry = this.lightCavalry;
        _loc1_.ballista = this.ballista;
        _loc1_.militia = this.militia;
        _loc1_.carriage = this.carriage;
        _loc1_.scouter = this.scouter;
        _loc1_.peasants = this.peasants;
        _loc1_.batteringRam = this.batteringRam;
        _loc1_.swordsmen = this.swordsmen;
        _loc1_.pikemen = this.pikemen;
        return _loc1_;
    }

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
    }

    public function add(param1:TroopBean, param2:Number = 1):void {
        if (param1) {
            this.archer = this.archer + param2 * param1.archer;
            this.ballista = this.ballista + param2 * param1.ballista;
            this.batteringRam = this.batteringRam + param2 * param1.batteringRam;
            this.carriage = this.carriage + param2 * param1.carriage;
            this.catapult = this.catapult + param2 * param1.catapult;
            this.heavyCavalry = this.heavyCavalry + param2 * param1.heavyCavalry;
            this.lightCavalry = this.lightCavalry + param2 * param1.lightCavalry;
            this.militia = this.militia + param2 * param1.militia;
            this.peasants = this.peasants + param2 * param1.peasants;
            this.pikemen = this.pikemen + param2 * param1.pikemen;
            this.scouter = this.scouter + param2 * param1.scouter;
            this.swordsmen = this.swordsmen + param2 * param1.swordsmen;
        }
    }

    public function removeEventListener(param1:String, param2:Function, param3:Boolean = false):void {
        this._bindingEventDispatcher.removeEventListener(param1, param2, param3);
    }

    public function empty():Boolean {
        return this.archer == 0 && this.ballista == 0 && this.batteringRam == 0 && this.carriage == 0 && this.catapult == 0 && this.heavyCavalry == 0 && this.lightCavalry == 0 && this.militia == 0 && this.peasants == 0 && this.pikemen == 0 && this.scouter == 0 && this.swordsmen == 0;
    }

    public function copyTo(param1:TroopBean):void {
        param1.heavyCavalry = this.heavyCavalry;
        param1.catapult = this.catapult;
        param1.archer = this.archer;
        param1.lightCavalry = this.lightCavalry;
        param1.ballista = this.ballista;
        param1.militia = this.militia;
        param1.carriage = this.carriage;
        param1.scouter = this.scouter;
        param1.peasants = this.peasants;
        param1.batteringRam = this.batteringRam;
        param1.swordsmen = this.swordsmen;
        param1.pikemen = this.pikemen;
    }

    public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false):void {
        this._bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
    }

    public function foodConsumption(param1:Number):Number {
        return this.foodConsumeRate * param1 / 3600;
    }

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function addTo(param1:TroopBean):void {
        param1.archer = param1.archer + this.archer;
        param1.ballista = param1.ballista + this.ballista;
        param1.batteringRam = param1.batteringRam + this.batteringRam;
        param1.carriage = param1.carriage + this.carriage;
        param1.catapult = param1.catapult + this.catapult;
        param1.heavyCavalry = param1.heavyCavalry + this.heavyCavalry;
        param1.lightCavalry = param1.lightCavalry + this.lightCavalry;
        param1.militia = param1.militia + this.militia;
        param1.peasants = param1.peasants + this.peasants;
        param1.pikemen = param1.pikemen + this.pikemen;
        param1.scouter = param1.scouter + this.scouter;
        param1.swordsmen = param1.swordsmen + this.swordsmen;
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
