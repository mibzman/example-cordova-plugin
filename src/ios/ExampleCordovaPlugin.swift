import Foundation

@objc(ExampleCordovaPlugin) class ExampleCordovaPlugin : CDVPlugin {
  func echo(_ command: CDVInvokedUrlCommand) {
    let message = (command.argument(at: 0) as! String) + " ios"
    print(message)

    let pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: message);
    commandDelegate.send(pluginResult, callbackId:command.callbackId);
  }
}
