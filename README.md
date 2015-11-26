# Kiwi-CedarShortcuts
Run single [Kiwi](https://github.com/kiwi-bdd/Kiwi) spec file using [CedarShortcuts](https://github.com/cppforlife/CedarShortcuts) Xcode plugin

[![CI Status](http://img.shields.io/travis/paulz/Kiwi-CedarShortcuts.svg?style=flat)](https://travis-ci.org/paulz/Kiwi-CedarShortcuts)
[![Version](https://img.shields.io/cocoapods/v/Kiwi-CedarShortcuts.svg?style=flat)](http://cocoapods.org/pods/Kiwi-CedarShortcuts)
[![License](https://img.shields.io/cocoapods/l/Kiwi-CedarShortcuts.svg?style=flat)](http://cocoapods.org/pods/Kiwi-CedarShortcuts)
[![Platform](https://img.shields.io/cocoapods/p/Kiwi-CedarShortcuts.svg?style=flat)](http://cocoapods.org/pods/Kiwi-CedarShortcuts)

## Usage

<kbd>Ctrl</kbd> + <kbd>Option</kbd> + <kbd>U</kbd>  runs all examples in currently open Kiwi Spec file in Xcode.

This helps Test Driven Development with Kiwi and saves time waiting for all specs to run.
See [Successful TDD on iOS](http://paulz.github.io/ios/tdd/unit/acceptance/spec/bdd/objc/2015/06/07/successful-tdd-on-ios.html) for more information on tools and tips. 

## Requirements

CedarShortcuts Xcode plugin
https://github.com/cppforlife/CedarShortcuts

## Installation

Kiwi-CedarShortcuts is available through [CocoaPods](http://cocoapods.org). To install
it, add `pod 'Kiwi-CedarShortcuts'` to your test target in Podfile:

```ruby
target 'Tests' do
  pod 'Kiwi-CedarShortcuts'
end
```

## Example

To run the example project spec
 1. clone the repo
 2. open [Example/Kiwi-CedarShortcuts.xcworkspace](Example/Kiwi-CedarShortcuts.xcworkspace)
 3. open [ExampleSpec.m](Example/Tests/ExampleSpec.m)
 4. press <kbd>Ctrl</kbd> + <kbd>Option</kbd> + <kbd>U</kbd>

## Frequetly Asked Questions
### Why Kiwi-CedarShortcuts does not run a single spec in isolation, but rather all examples in spec? 
 * Running a single example requires precise cursor placement in Xcode within the example or even first line of example, which takes attention away from the task.
 * Refactoring code often cause other examples to fail and it's useful to run whole KWSpec
 * CedarShortcuts plugin does not have a shortcut to run spec file, so we are using `Run Focused Spec`
 * In practice, we found it already saves so much time for TDD, that trying to isolate a single example is a battle of diminishing returns
 * It motivates us to have short specs instead of long ones with large number of tiny examples.

## Author

Paul Zabelin, http://paulz.github.io

## License

Kiwi-CedarShortcuts is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
