#
# Be sure to run `pod lib lint AGHelperSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'AGHelperSwift'
    s.version          = '0.1.0'
    s.summary          = 'A framework to customize your UI and will speed up your development.'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    'AGHelperSwift is a framework for customizing your UI elements and will speed up your development.'
    DESC
    
    s.homepage         = 'https://github.com/dev-iayush27/AGHelperSwift'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Ayush Gupta' => 'dev.iayush27@gmail.com' }
    s.source           = { :git => 'https://github.com/dev-iayush27/AGHelperSwift.git', :tag => s.version.to_s }
    s.social_media_url = 'https://twitter.com/dev_iayush27'
    s.ios.deployment_target = '12.0'
    s.source_files = 'Source/**/*.swift'
    s.swift_version = '5.0'
    s.platforms = {
        "ios": "12.0"
    }
    
    # s.resource_bundles = {
    #   'AGHelperSwift' => ['AGHelperSwift/Assets/*.png']
    # }
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    # s.dependency 'AFNetworking', '~> 2.3'
end
