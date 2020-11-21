#
# Be sure to run `pod lib lint IntentGmaps.podspec' to ensure this is a
# valid spec before submitting.
#
# Also, .podspec file should be named according to the plugin's name
# i.e. @dev-name/plugin-name should become DevNamePluginName both as file name
# and in spec's name.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

require 'json'
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
    s.name = 'AndevsvIntentGmaps'
    s.version = package['version']
    s.summary = 'Plugin to open Google Maps on iOS'
    s.license = { :type => 'MIT', :file => 'LICENSE' }
    s.homepage = 'https://andersoncastellon.com/'
    s.author = 'Anderson Castellon'
    s.source = { :git => 'https://github.com/DevAndersonCastellon/intent-gmaps-capacitor-plugin.git', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.dependency 'Capacitor'
    s.swift_version = '5.1'
  end
