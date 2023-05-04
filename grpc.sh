
RC_XAPP_IP=10.104.101.157

grpcurl -plaintext -d "{ \"e2NodeID\": \"36000000\", \"plmnID\": \"313131\", \"ranName\": \"gnb_131_133_31000000\", \"RICE2APHeaderData\": { \"RanFuncId\": 300, \"RICRequestorID\": 2 }, \"RICControlHeaderData\": { \"ControlStyle\": 3, \"ControlActionId\": 1, \"UEID\": \"00003\" }, \"RICControlMessageData\": { \"RICControlCellTypeVal\": 4, \"TargetCellID\": \"11103\" }, \"RICControlAckReqVal\": 0 }"  ${RC_XAPP_IP}:7777 rc.MsgComm.SendRICControlReqServiceGrpc
