// SettingsIPA Project Skeleton
// Drop this into macOS VM, open in Xcode

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = ViewController()
        let nav = UINavigationController(rootViewController: vc)
        window?.rootViewController = nav
        window?.makeKeyAndVisible()

        return true
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Settings IPA"
        view.backgroundColor = .systemBackground

        let label = UILabel()
        label.text = "Custom Settings App"
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(label)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

// Settings.bundle (create a folder named "Settings.bundle" in Xcode)
// Inside, add a Root.plist with sample editable preferences:
/*
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>PreferenceSpecifiers</key>
    <array>
        <dict>
            <key>Type</key>
            <string>PSToggleSwitchSpecifier</string>
            <key>Title</key>
            <string>Enable Feature</string>
            <key>Key</key>
            <string>enable_feature</string>
            <key>DefaultValue</key>
            <true/>
        </dict>
        <dict>
            <key>Type</key>
            <string>PSTextFieldSpecifier</string>
            <key>Title</key>
            <string>Custom Text</string>
            <key>Key</key>
            <string>custom_text</string>
            <key>DefaultValue</key>
            <string>Hello</string>
        </dict>
    </array>
    <key>StringsTable</key>
    <string>Root</string>
</dict>
</plist>
*/
