package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class TroopStrBean extends Object implements IEventDispatcher {

    public function TroopStrBean(param1:Object = null) {
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

    private var _570808349pikemen:String;
    private var _1671895235heavyCavalry:String;
    private var _47090712catapult:String;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _1409605757archer:String;
    private var _1821715860lightCavalry:String;
    private var _1062697427militia:String;
    private var _1914804330ballista:String;
    private var _5304340carriage:String;
    private var _1924105259scouter:String;
    private var _43947821peasants:String;
    private var _2135247928batteringRam:String;
    private var _1669530624swordsmen:String;

    public function get swordsmen():String {
        return this._1669530624swordsmen;
    }

    public function set swordsmen(param1:String):void {
        var _loc2_:Object = this._1669530624swordsmen;
        if (_loc2_ !== param1) {
            this._1669530624swordsmen = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "swordsmen", _loc2_, param1));
        }
    }

    public function get archer():String {
        return this._1409605757archer;
    }

    public function set archer(param1:String):void {
        var _loc2_:Object = this._1409605757archer;
        if (_loc2_ !== param1) {
            this._1409605757archer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "archer", _loc2_, param1));
        }
    }

    public function get lightCavalry():String {
        return this._1821715860lightCavalry;
    }

    public function set lightCavalry(param1:String):void {
        var _loc2_:Object = this._1821715860lightCavalry;
        if (_loc2_ !== param1) {
            this._1821715860lightCavalry = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lightCavalry", _loc2_, param1));
        }
    }

    public function get ballista():String {
        return this._1914804330ballista;
    }

    public function set ballista(param1:String):void {
        var _loc2_:Object = this._1914804330ballista;
        if (_loc2_ !== param1) {
            this._1914804330ballista = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "ballista", _loc2_, param1));
        }
    }

    public function get carriage():String {
        return this._5304340carriage;
    }

    public function set carriage(param1:String):void {
        var _loc2_:Object = this._5304340carriage;
        if (_loc2_ !== param1) {
            this._5304340carriage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "carriage", _loc2_, param1));
        }
    }

    public function get catapult():String {
        return this._47090712catapult;
    }

    public function set catapult(param1:String):void {
        var _loc2_:Object = this._47090712catapult;
        if (_loc2_ !== param1) {
            this._47090712catapult = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "catapult", _loc2_, param1));
        }
    }

    public function get scouter():String {
        return this._1924105259scouter;
    }

    public function set scouter(param1:String):void {
        var _loc2_:Object = this._1924105259scouter;
        if (_loc2_ !== param1) {
            this._1924105259scouter = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "scouter", _loc2_, param1));
        }
    }

    public function get heavyCavalry():String {
        return this._1671895235heavyCavalry;
    }

    public function set heavyCavalry(param1:String):void {
        var _loc2_:Object = this._1671895235heavyCavalry;
        if (_loc2_ !== param1) {
            this._1671895235heavyCavalry = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "heavyCavalry", _loc2_, param1));
        }
    }

    public function get batteringRam():String {
        return this._2135247928batteringRam;
    }

    public function set batteringRam(param1:String):void {
        var _loc2_:Object = this._2135247928batteringRam;
        if (_loc2_ !== param1) {
            this._2135247928batteringRam = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "batteringRam", _loc2_, param1));
        }
    }

    public function get militia():String {
        return this._1062697427militia;
    }

    public function set militia(param1:String):void {
        var _loc2_:Object = this._1062697427militia;
        if (_loc2_ !== param1) {
            this._1062697427militia = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "militia", _loc2_, param1));
        }
    }

    public function get peasants():String {
        return this._43947821peasants;
    }

    public function set peasants(param1:String):void {
        var _loc2_:Object = this._43947821peasants;
        if (_loc2_ !== param1) {
            this._43947821peasants = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "peasants", _loc2_, param1));
        }
    }

    public function get pikemen():String {
        return this._570808349pikemen;
    }

    public function set pikemen(param1:String):void {
        var _loc2_:Object = this._570808349pikemen;
        if (_loc2_ !== param1) {
            this._570808349pikemen = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "pikemen", _loc2_, param1));
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

    public function addTo(param1:TroopBean):void {
        param1.archer = param1.archer + int(this.archer);
        param1.ballista = param1.ballista + int(this.ballista);
        param1.batteringRam = param1.batteringRam + int(this.batteringRam);
        param1.carriage = param1.carriage + int(this.carriage);
        param1.catapult = param1.catapult + int(this.catapult);
        param1.heavyCavalry = param1.heavyCavalry + int(this.heavyCavalry);
        param1.lightCavalry = param1.lightCavalry + int(this.lightCavalry);
        param1.militia = param1.militia + int(this.militia);
        param1.peasants = param1.peasants + int(this.peasants);
        param1.pikemen = param1.pikemen + int(this.pikemen);
        param1.scouter = param1.scouter + int(this.scouter);
        param1.swordsmen = param1.swordsmen + int(this.swordsmen);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
