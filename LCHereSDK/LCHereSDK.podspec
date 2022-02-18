#
# Be sure to run `pod lib lint LCHereSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LCHereSDK'
  s.version          = '0.1.0'
  s.summary          = 'A short description of LCHereSDK.'
  s.swift_version    = '5.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://xxxxxxxxx'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Eric Wang' => 'wangyihan2019@gmail.com' }
  s.source           = { :git => 'xxxxxxxx.git', :tag => 'LCHereSDK-' + s.version.to_s }

  s.ios.deployment_target = '9.0'
#  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }

  s.prefix_header_file = false
  s.cocoapods_version = '>= 1.10.0'
  s.source_files = 'LCHereSDK/Classes/**/*'
  s.preserve_paths = [
    'LCHereSDK/README.md',
    'LCHereSDK/CHANGELOG.md'
  ]
  
  s.resource_bundles = {
    'LCHereSDK' => ['LCHereSDK/Assets/**/*']
  }
  s.vendored_frameworks = 'heresdk.xcframework'
  # s.public_header_files = "LCHereSDK/Classes/LCHereSDK.h"
  # s.prefix_header_file = 'LCHereSDK/Classes/LCHereSDK.pch'
#  s.public_header_files = "LCHereSDK/Classes/SDK/heresdk.xcframework/ios-arm64/heresdk.framework/Headers/heresdk-Swift.h"
  # s.frameworks = 'UIKit', 'MapKit'
  
  # Todo: write your dependency here
  # famous public pods
  # less famous public pods
  # private pods
  
end

