# democonfigiosproject
Configuring environment for an iOS project step by step. Fighting! 🌟


### Error `unable to open file in target` for *.xcconfig files

- Set the configuration file setting* "None" for the Pods related target.
- Close the .xcworkspace.
- Run pod install again
- Now open and build your .xcworkspace


### The `Copy Bundle Resources build phase contains this target's Info.plist file`

- Remove Info.plist file in Copy Bundle Resources in build phase