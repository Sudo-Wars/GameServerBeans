package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class RankHeroBean extends Object implements IEventDispatcher {

    public function RankHeroBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.name != null) {
                this.name = param1.name;
            }
            if (param1.management != null) {
                this.management = param1.management;
            }
            if (param1.grade != null) {
                this.grade = param1.grade;
            }
            if (param1.kind != null) {
                this.kind = param1.kind;
            }
            if (param1.rank != null) {
                this.rank = param1.rank;
            }
            if (param1.power != null) {
                this.power = param1.power;
            }
            if (param1.stratagem != null) {
                this.stratagem = param1.stratagem;
            }
        }
    }

    private var _3373707name:String;
    private var _1799980989management:int;
    private var _98615255grade:int;
    private var _3292052kind:String;
    private var _3492908rank:int;
    private var _106858757power:int;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _412944526stratagem:int;

    public function get management():int {
        return this._1799980989management;
    }

    public function set management(param1:int):void {
        var _loc2_:Object = this._1799980989management;
        if (_loc2_ !== param1) {
            this._1799980989management = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "management", _loc2_, param1));
        }
    }

    public function get power():int {
        return this._106858757power;
    }

    public function set power(param1:int):void {
        var _loc2_:Object = this._106858757power;
        if (_loc2_ !== param1) {
            this._106858757power = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "power", _loc2_, param1));
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

    public function get kind():String {
        return this._3292052kind;
    }

    public function set kind(param1:String):void {
        var _loc2_:Object = this._3292052kind;
        if (_loc2_ !== param1) {
            this._3292052kind = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "kind", _loc2_, param1));
        }
    }

    public function get grade():int {
        return this._98615255grade;
    }

    public function set grade(param1:int):void {
        var _loc2_:Object = this._98615255grade;
        if (_loc2_ !== param1) {
            this._98615255grade = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "grade", _loc2_, param1));
        }
    }

    public function get rank():int {
        return this._3492908rank;
    }

    public function set rank(param1:int):void {
        var _loc2_:Object = this._3492908rank;
        if (_loc2_ !== param1) {
            this._3492908rank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rank", _loc2_, param1));
        }
    }

    public function get stratagem():int {
        return this._412944526stratagem;
    }

    public function set stratagem(param1:int):void {
        var _loc2_:Object = this._412944526stratagem;
        if (_loc2_ !== param1) {
            this._412944526stratagem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "stratagem", _loc2_, param1));
        }
    }

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false):void {
        this._bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
    }

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
    }

    public function removeEventListener(param1:String, param2:Function, param3:Boolean = false):void {
        this._bindingEventDispatcher.removeEventListener(param1, param2, param3);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
