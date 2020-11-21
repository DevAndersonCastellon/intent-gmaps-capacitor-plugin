import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(IntentGmaps)
public class IntentGmaps: CAPPlugin {

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.success([
            "value": value
        ])
    }
    
    @objc func openMap(_ call: CAPPluginCall) {
        let inputURL = call.getString("url") ?? ""
        if (inputURL != "") {
            if let safeURL = URL(string: inputURL) {
                UIApplication.shared.open(safeURL)
                call.resolve()
            } else {
                call.reject("Failed to open Safari")
            }
        } else {
            call.reject("Invalid URL provided")
        }
    }
    
}
