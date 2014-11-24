#
# Be sure to run `pod lib lint DLCustomActivity.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "DLCustomActivity"
  s.version          = "0.1.0"
  s.summary          = "An easy way to create any custom UIActivity."
  s.description      = <<-DESC
                       Create any custom UIActivity without subclass.
                       DESC
  s.homepage         = "https://github.com/darcyliu/DLCustomActivity"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Darcy Liu" => "tearnon@live.com" }
  s.source           = { :git => "https://github.com/darcyliu/DLCustomActivity.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/tearnon'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'DLCustomActivity' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
