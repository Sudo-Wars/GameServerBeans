package com.evony.common.server.events {
import com.evony.common.BaseBean;

public class QuestFinished extends BaseBean {

    public function QuestFinished(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false) {
        super(param1, param2, param3, param4);
        if (param2.finishedQuest != null) {
            this.finishedQuest = param2.finishedQuest;
        }
    }

    public var finishedQuest:int;
}
}
