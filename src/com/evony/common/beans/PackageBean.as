package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

public class PackageBean extends Object implements IEventDispatcher {

    public static const PACKAGE_TYPE_SERIAL:int = 1;
    public static const PACKAGE_TYPE_NORMAL:int = 3;
    public static const PACKAGE_TYPE_SCORES:int = 2;

    public function PackageBean(param1:Object = null) {
        var _loc2_:Object = null;
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        this.itemListArray = new ArrayCollection();
        if (param1) {
            if (param1.status != null) {
                this.status = param1.status;
            }
            if (param1.type != null) {
                this.type = param1.type;
            }
            if (param1.itemList) {
                for each(_loc2_ in param1.itemList) {
                    this.itemListArray.addItem(new ItemBean(_loc2_));
                }
            }
            if (param1.provideTime != null) {
                this.provideTime = param1.provideTime;
            }
            if (param1.id != null) {
                this.id = param1.id;
            }
            if (param1.isUseNow != null) {
                this.isUseNow = param1.isUseNow;
            }
            if (param1.claimedTime != null) {
                this.claimedTime = param1.claimedTime;
            }
            if (param1.scores != null) {
                this.scores = param1.scores;
            }
            if (param1.maxMedal != null) {
                this.maxMedal = param1.maxMedal;
            }
            if (param1.minMedal != null) {
                this.minMedal = param1.minMedal;
            }
            if (param1.desc != null) {
                this.desc = param1.desc;
            }
            if (param1.packageName != null) {
                this.packageName = param1.packageName;
            }
            if (param1.expiredTime != null) {
                this.expiredTime = param1.expiredTime;
            }
        }
    }

    private var _892481550status:int;
    private var _3575610type:int;
    private var _1049685640itemListArray:ArrayCollection;
    private var _3355id:int;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _162030183isUseNow:int;
    private var _2063817998provideTime:Number;
    private var _1530923192claimedTime:String;
    private var _907766751scores:int;
    private var _391026675maxMedal:int;
    private var _1385169979minMedal:int;
    private var _3079825desc:String;
    private var _908759025packageName:String;
    private var _92515438expiredTime:Number;

    public function get itemListArray():ArrayCollection {
        return this._1049685640itemListArray;
    }

    public function set itemListArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._1049685640itemListArray;
        if (_loc2_ !== param1) {
            this._1049685640itemListArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemListArray", _loc2_, param1));
        }
    }

    public function get desc():String {
        return this._3079825desc;
    }

    public function set desc(param1:String):void {
        var _loc2_:Object = this._3079825desc;
        if (_loc2_ !== param1) {
            this._3079825desc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "desc", _loc2_, param1));
        }
    }

    public function get expiredTime():Number {
        return this._92515438expiredTime;
    }

    public function set expiredTime(param1:Number):void {
        var _loc2_:Object = this._92515438expiredTime;
        if (_loc2_ !== param1) {
            this._92515438expiredTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "expiredTime", _loc2_, param1));
        }
    }

    public function get provideTime():Number {
        return this._2063817998provideTime;
    }

    public function set provideTime(param1:Number):void {
        var _loc2_:Object = this._2063817998provideTime;
        if (_loc2_ !== param1) {
            this._2063817998provideTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "provideTime", _loc2_, param1));
        }
    }

    public function get isUseNow():int {
        return this._162030183isUseNow;
    }

    public function set isUseNow(param1:int):void {
        var _loc2_:Object = this._162030183isUseNow;
        if (_loc2_ !== param1) {
            this._162030183isUseNow = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "isUseNow", _loc2_, param1));
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

    public function get scores():int {
        return this._907766751scores;
    }

    public function set scores(param1:int):void {
        var _loc2_:Object = this._907766751scores;
        if (_loc2_ !== param1) {
            this._907766751scores = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "scores", _loc2_, param1));
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

    public function get minMedal():int {
        return this._1385169979minMedal;
    }

    public function set minMedal(param1:int):void {
        var _loc2_:Object = this._1385169979minMedal;
        if (_loc2_ !== param1) {
            this._1385169979minMedal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "minMedal", _loc2_, param1));
        }
    }

    public function get claimedTime():String {
        return this._1530923192claimedTime;
    }

    public function set claimedTime(param1:String):void {
        var _loc2_:Object = this._1530923192claimedTime;
        if (_loc2_ !== param1) {
            this._1530923192claimedTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "claimedTime", _loc2_, param1));
        }
    }

    public function get packageName():String {
        return this._908759025packageName;
    }

    public function set packageName(param1:String):void {
        var _loc2_:Object = this._908759025packageName;
        if (_loc2_ !== param1) {
            this._908759025packageName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "packageName", _loc2_, param1));
        }
    }

    public function get status():int {
        return this._892481550status;
    }

    public function set status(param1:int):void {
        var _loc2_:Object = this._892481550status;
        if (_loc2_ !== param1) {
            this._892481550status = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "status", _loc2_, param1));
        }
    }

    public function get maxMedal():int {
        return this._391026675maxMedal;
    }

    public function set maxMedal(param1:int):void {
        var _loc2_:Object = this._391026675maxMedal;
        if (_loc2_ !== param1) {
            this._391026675maxMedal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "maxMedal", _loc2_, param1));
        }
    }

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
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

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
