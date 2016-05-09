
import Foundation

@objc(HWPHello) class Hello : CDVPlugin {
    func greet(command: CDVInvokedUrlCommand) {
        let message = command.arguments[0] as! String
        var logs = [[String: String]]()
        logs = systemLogs()
        print(logs)
        let pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAsString: "Hello \(message)")
        commandDelegate!.sendPluginResult(pluginResult, callbackId:command.callbackId)
    }
}

func systemLogs() -> [[String: String]] {
    let q = asl_new(UInt32(ASL_TYPE_QUERY))
    var logs = [[String: String]]()
    let r = asl_search(nil, q)
    var m = asl_next(r)
    while m != nil {
        var logDict = [String: String]()
        var i: UInt32 = 0
        while true {
            if let key = String.fromCString(asl_key(m, i)) {
                let val = String.fromCString(asl_get(m, key))
                logDict[key] = val
                i++
            } else {
                break
            }
        }
        m = asl_next(r)
        logs.append(logDict)
    }
    asl_release(r)
    return logs
}
