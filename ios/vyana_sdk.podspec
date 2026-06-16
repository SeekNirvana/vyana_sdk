#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint vyana_sdk.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'vyana_sdk'
  s.version          = '0.2.4'
  s.summary          = 'Flutter SDK bridge for apps that interface with PRANA smart rings.'
  s.description      = <<-DESC
Flutter plugin bridge for apps that discover, connect to, and interface with PRANA smart rings from Seek Nirvana.
                       DESC
  s.homepage         = 'https://github.com/SeekNirvana/vyana_sdk'
  s.license          = { :type => 'LGPL-3.0-only', :file => '../LICENSE' }
  s.author           = { 'SeekNirvana' => 'engineering@seeknirvana.com' }
  s.source           = { :path => '.' }


  s.source_files = 'Classes/**/*'



  # s.dependency 'Flutter' 'B' 'C'



  s.dependency 'Flutter'
  



  s.platform = :ios, '11.0'




  s.vendored_frameworks = [
    'Frameworks/*.framework',   # Include all local .framework artifacts.
    'Frameworks/*.xcframework'  # Include all local .xcframework artifacts.
  ]

  s.dependency 'iOSDFULibrary'	, '~> 4.13.0'


  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }


  s.swift_version = '5.0'


  s.static_framework = true

end
