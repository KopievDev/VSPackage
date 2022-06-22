# VSLib

A description of this package.


```swift
// Example
import UIKit
import VSLib

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = VSUser(firstName: "Bro", lastName: "Dabro") // init User
        
        let agent = VSAgent(account: "95453f64-b803-4495-abd9-9c785590f2fe",
                            token: "7157fb3c-268b-4cf9-9988-beb4d2370cda") // Init Agent
        
        let caller = VSCaller(user: user, agent: agent) // Create caller
        caller.delegate = self // Subscribe to event
        caller.show(from: self) // Show webview
    }
}

extension ViewController: VSCallerDelegate {
    
    func caller(didReceive data: [String : Any]?) {
        print(data)
    }
}

```
And be sure to add this code to info.plist

```xml
    <key>NSCameraUsageDescription</key>
    <string>camera please</string>
    <key>NSMicrophoneUsageDescription</key>
    <string>mic please</string>
```
