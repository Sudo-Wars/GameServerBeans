package com.evony.client.action {
import com.evony.common.module.CommandResponse;
import com.evony.common.module.report.ReportListResponse;
import com.evony.common.module.report.ReportResponse;

public class ReportCommands extends Object {

    public static const DELETE_REPORT:String = "report.deleteReport";
    public static const RECEIVE_REPORT_LIST:String = "report.receiveReportList";
    public static const MARK_AS_READ:String = "report.markAsRead";
    public static const READ_OVER_REPORT:String = "report.readOverReport";

    public static function receiveReportList(param1:int, param2:int, param3:int, param4:Function = null):void {
        CommandFactory.SendCommand(RECEIVE_REPORT_LIST, {
            "pageNo": param1,
            "pageSize": param2,
            "reportType": param3
        }, ReportListResponse, param4);
    }

    public static function markAsRead(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(MARK_AS_READ, {"reportId": param1}, ReportResponse, param2);
    }

    public static function readOverReport(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(READ_OVER_REPORT, {"reportIds": param1}, ReportResponse, param2);
    }

    public static function deleteReport(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(DELETE_REPORT, {"idStr": param1}, CommandResponse, param2);
    }

    public function ReportCommands() {
        super();
    }
}
}
