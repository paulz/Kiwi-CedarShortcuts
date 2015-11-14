#
# Be sure to run 'pod lib lint Kiwi-CedarShortcuts.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Kiwi-CedarShortcuts"
  s.version          = "0.1.0"
  s.summary          = "Run single Kiwi spec using CedarShortcuts Xcode plugin"
  s.description      = <<-DESC
    Run single Kiwi spec file in Xcode by pressing Control-Option-U
    requires CedarShortcuts Xcode plugin
                       DESC

  s.homepage         = "https://github.com/paulz/Kiwi-CedarShortcuts"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Paul Zabelin" => "https://github.com/paulz" }
  s.source           = { :git => "https://github.com/paulz/Kiwi-CedarShortcuts.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/iospaulz'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'Kiwi-CedarShortcuts' => ['Pod/Assets/*.png']
  }
  s.framework = 'XCTest'
  s.dependency 'Kiwi', '~> 2.4'
end
