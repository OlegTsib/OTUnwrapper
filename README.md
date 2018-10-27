<h1 align="center">
OTUnwrapper
</h1>

<h4 align="center">Unwrap Optional and JSON values</h4>

<p align="center">

<img alt="Version" src="https://img.shields.io/badge/pod-v1.0.0-green.svg">
<img alt="Author" src="https://img.shields.io/badge/author-Oleg%20Tsibulevskiy-blue.svg">
<img alt="Swift" src="https://img.shields.io/badge/swift-4.2%2B-orange.svg">
<img alt="Swift" src="https://img.shields.io/badge/platform-ios-lightgrey.svg">
</p>

#### Table of Contents  
1. [Requirements](#requirements)
2. [Installation](#installation)
3. [Opportunities](#opportunities)
4. [How to Use](#howToUse) 
5. [Unwrap Optional Value](#optionalValue)
6. [Unwrap Data to JSON](#dataToJson)
7. [Unwrap JSON value](#jsonValue)
8. [Unwrap JSON object](#jsonObject)

<a name="requirements"/>

# Requirements:
* iOS 8.0+ 
* Xcode 9.4+
* Swift 4.2+

<a name="installation"/>

# Installation:

### CocoaPods
CocoaPods is a dependency manager for Cocoa projects. You can install it with the following command:
```
$ gem install cocoapods
```
To integrate GAInfiniteCollectionKit-iOS into your Xcode project using CocoaPods, specify it in your Podfile:
```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
pod 'OTUnwrapper'
end
```
Then, run the following command:
```
$ pod install
```

<a name="opportunities"/>

# Opportunities:
1. Unwrap Optional
2. Unwrap data to JSON
3. Unwrap JSON value
4. Unwrap JSON to Object
5. Unwrap with default value
<a name="howToUse"/>

# How to Use:

### Import: 
```swift
import OTUnwrapper
```
<a name="optionalValue"/>
## Unwrap Optional Value:
<h5>You have two ways to unwrap optional</h5>
##Without default value:
If you do not  use default value you need to specify value type

```swift
var optionalString   : String?
var optionalString2 : String?

optionalString2 = "String is not nil"
let value   : String = optionalString.unwrap()  //  value   = "" 
let value2 : String = optionalString.unwrap()  //  value2 = "String is not nil" 
```
##With default value:
If you use default value you do not need to specify value type
```swift
var optionalString   : String?
var optionalString2 : String?

optionalString2 = "String is not nil"
let value   = optionalString.unwrap("Value is nil")    // value   = "Value is nil"
let value2 = optionalString2.unwrap("Value is nil")  //  value2 = "String is not nil"
```

<a name="dataToJson"/>
## Unwrap Data to JSON
### Example: 
```swift
let data = [DATA]
let json = data.unwrapToJSON()
```
<a name="jsonValue"/>
## Unwrap JSON value
### Example: 
```swift
let json: [String:Any] = ["name": "OTUnwrapper", "URL" : "https://github.com/OlegTsib/OTUnwrapper","liked": true]

let name: String = json.unwrapValue("name")        // name = "OTUnwrapper"
let liked            = json.unwrapValue("liked",false) // liked   = true
```
<a name="jsonObject"/>

## Unwrap JSON object
### First step: 
Create Class or Struct and implement protocol <strong>OTUnwrappedObject</strong>
### Example: 
### Struct User: 
```swift
import OTUnwrapper

struct User: OTUnwrappedObject
{
let name       : String
let imageURI : String

init(dictionary: [String : Any])
{
email       = dictionary.unwrapValue("name")
imageURI = dictionary.unwrapValue("image")
}
}
```
### JSON File: 
```JSON
{
"user":
{
"name ": "OTUnwrapper",
"image": "https://avatars0.githubusercontent.com/u/15246986?s=400&v=4"
}
}
```
### Unwrap to object: 
```swift
guard let path = Bundle.main.path(forResource: "FileName", ofType: "json") else { return }
do
{
let data          =  try Data(contentsOf: URL(fileURLWithPath: path))
let json          =  data.unwrapToJSON()
let user: User  =  json.unwrapToObject("user")
}
catch
{
}
```

## Author

OlegTsib, olegtsib@gmail.com

## License

OTUnwrapper is available under the MIT license. See the LICENSE file for more info.
