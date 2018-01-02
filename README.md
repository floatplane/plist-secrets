# plist-secrets

This shows a simple way of storing and loading API keys for a Swift project, while keeping the keys out of source control.

To copy this approach:

1. Add a new file called `secrets.plist` to your project: go to File -> New -> Property List, name it `secrets`
1. Make sure the new file is in `.gitignore` - you don't want to push your secrets up to GitHub!
1. Add your API keys to the new file in the property list editor
1. At runtime, load your keys from the plist file:
```swift
        // Load the dictionary of secret keys from secrets.plist
        let path = Bundle.main.path(forResource: "secrets", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        // Load secrets
        let secret1 = dict!.object(forKey: "YOUR_KEY_HERE") as? String
        // load any others...
```

