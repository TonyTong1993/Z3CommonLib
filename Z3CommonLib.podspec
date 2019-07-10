#
# Be sure to run `pod lib lint Z3CommonLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Z3CommonLib'
  s.version          = '0.1.1'
  s.summary          = 'Z3CommonLib for zzht'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/TonyTong1993/Z3CommonLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'TonyTong1993' => 'tongwanhua1993@163.com' }
  s.source           = { :git => 'https://github.com/TonyTong1993/Z3CommonLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
  s.ios.deployment_target = '8.0'

  s.source_files = 'Z3CommonLib/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Z3CommonLib' => ['Z3CommonLib/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'YYKit', '~> 1.0.9'
   s.dependency 'MBProgressHUD', '~> 1.1.0'
   s.dependency 'DZNEmptyDataSet', '~> 1.8.1'
   s.dependency 'MJRefresh', '~> 3.2.0'
   s.dependency 'Masonry', '~> 1.1.0'
end
