package com.evony.common {
import flash.events.Event;

public class BaseBean extends Event {

    public function BaseBean(eventType:String, param2:Object, bubbles:Boolean = false, cancelable:Boolean = false) {
        super(eventType, bubbles, cancelable);
    }
}
}
