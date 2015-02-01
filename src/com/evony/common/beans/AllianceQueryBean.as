package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class AllianceQueryBean extends Object implements IEventDispatcher {

    public function AllianceQueryBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.bulletin != null) {
                this.bulletin = param1.bulletin;
            }
            if (param1.limit != null) {
                this.limit = param1.limit;
            }
            if (param1.name != null) {
                this.name = param1.name;
            }
            if (param1.curNum != null) {
                this.curNum = param1.curNum;
            }
            if (param1.creatorName != null) {
                this.creatorName = param1.creatorName;
            }
            if (param1.leaderName != null) {
                this.leaderName = param1.leaderName;
            }
            if (param1.prestige != null) {
                this.prestige = param1.prestige;
            }
            if (param1.desc != null) {
                this.desc = param1.desc;
            }
            if (param1.ranking != null) {
                this.ranking = param1.ranking;
            }
        }
    }

    private var _1344718425bulletin:String;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _102976443limit:int;
    private var _3373707name:String;
    private var _1191282484leaderName:String;
    private var _1349154522curNum:int;
    private var _1276224445prestige:Number;
    private var _3079825desc:String;
    private var _190875433creatorName:String;
    private var _978111542ranking:int;

    public function get prestige():Number {
        return this._1276224445prestige;
    }

    public function set prestige(param1:Number):void {
        var _loc2_:Object = this._1276224445prestige;
        if (_loc2_ !== param1) {
            this._1276224445prestige = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "prestige", _loc2_, param1));
        }
    }

    public function get name():String {
        return this._3373707name;
    }

    public function set name(param1:String):void {
        var _loc2_:Object = this._3373707name;
        if (_loc2_ !== param1) {
            this._3373707name = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "name", _loc2_, param1));
        }
    }

    public function get creatorName():String {
        return this._190875433creatorName;
    }

    public function set creatorName(param1:String):void {
        var _loc2_:Object = this._190875433creatorName;
        if (_loc2_ !== param1) {
            this._190875433creatorName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "creatorName", _loc2_, param1));
        }
    }

    public function get curNum():int {
        return this._1349154522curNum;
    }

    public function set curNum(param1:int):void {
        var _loc2_:Object = this._1349154522curNum;
        if (_loc2_ !== param1) {
            this._1349154522curNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "curNum", _loc2_, param1));
        }
    }

    public function get bulletin():String {
        return this._1344718425bulletin;
    }

    public function set bulletin(param1:String):void {
        var _loc2_:Object = this._1344718425bulletin;
        if (_loc2_ !== param1) {
            this._1344718425bulletin = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "bulletin", _loc2_, param1));
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

    public function get leaderName():String {
        return this._1191282484leaderName;
    }

    public function set leaderName(param1:String):void {
        var _loc2_:Object = this._1191282484leaderName;
        if (_loc2_ !== param1) {
            this._1191282484leaderName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "leaderName", _loc2_, param1));
        }
    }

    public function get limit():int {
        return this._102976443limit;
    }

    public function set limit(param1:int):void {
        var _loc2_:Object = this._102976443limit;
        if (_loc2_ !== param1) {
            this._102976443limit = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "limit", _loc2_, param1));
        }
    }

    public function get ranking():int {
        return this._978111542ranking;
    }

    public function set ranking(param1:int):void {
        var _loc2_:Object = this._978111542ranking;
        if (_loc2_ !== param1) {
            this._978111542ranking = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "ranking", _loc2_, param1));
        }
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

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
