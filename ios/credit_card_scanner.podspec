#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint card_scanner.podspec' to validate before publishing.
#

Pod::Spec.new do |s|
  s.name             = 'credit_card_scanner'
  s.version          = '0.0.1'
  s.summary          = 'Fast, Accurate and Secure Credit & Debit card scanning library for flutter. This package is a fork of the original.'
  s.description      = <<-DESC
A new Flutter plugin.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.resources = 'Assets/*.png'
  s.dependency 'Flutter'
  s.dependency 'GoogleMLKit/TextRecognition', '~> 7.0.0'
  s.platform = :ios, '13.0'
  s.ios.deployment_target = '15.5.0'
  s.static_framework = true

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
