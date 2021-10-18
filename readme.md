# ObjectiveCSound
    This is test app to demostrate my Objective-C skill :) 

# Screens
    1. Master screen to list all the tracks
    2. Details screen to show detail of selected track from previous screen

# Design
    Design done using Storyboard and xib files

# Supported 
    iOS 9.0+

# Implemented following things: 
    1. Category - To get formatted date string from given date string
    2. Singlton classes - To create object of classes once and used many times for functionality like read json file and parse it, get array of tracks data
    3. Assets - To show default placeholder image for the track

# Architecuter 
    ## Managers
        For Data manager classes 
    ## Helpers
        For Helper classes like Json parsing, date formatting, etc.
    ## DataModels
        For represeting data item classes
    ## AppDelegates
        For Legendary AppDelegate file and newly introduced SceneDelegate classes
    ## Controllers
        For representing All the screens of the app
    ## Resources
        For app resources like static data files, storyboards, assets, etc.
    ## SupportingFiles
        For app supporting files like info.plist, GoogleInfoPlist.plist, etc.
        
        
# SDKs
    Third party SDK added using CocoaPods
        1. SDWebImage - To load image from URL string path 

Still many things I can do
1. Follow MVVM architecture 
2. Create custom views and classes for loaders, alerts kind of reusable things
3. Can maintain String constants, so that all the string content can be handle from common place, and no need to search and replace string when changes are needed 

