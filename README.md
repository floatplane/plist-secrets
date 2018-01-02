# plist-secrets

This shows a simple way of storing and loading API keys for a Swift project, while keeping the keys out of source control.

To copy this approach:

1. Add a new file called `secrets.plist` to your project: go to File -> New -> Property List, name it `secrets`
1. Make sure the new file is in `.gitignore` - you don't want to push your secrets up to GitHub!
1. Add your API keys to the new file in the property list editor. When you're done, it might look something like this:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>API_SECRET_ONE</key>
	<string>this is secret one</string>
	<key>API_SECRET_TWO</key>
	<string>secret two is very different</string>
</dict>
</plist>
```
1. At runtime, you would load your keys from the plist file wherever you need them:
```swift
        // Load the dictionary of secret keys from secrets.plist
        let path = Bundle.main.path(forResource: "secrets", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        // Load secrets
        let secret1 = dict!.object(forKey: "YOUR_KEY_HERE") as? String
        // load any others...
```

