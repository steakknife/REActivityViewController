Pod::Spec.new do |s|
  s.name        = 'REActivityViewController'
  s.version     = '4.0.0'
  s.authors     = { 'Roman Efimov' => 'romefimov@gmail.com' }
  s.homepage    = 'https://github.com/steakknife/REActivityViewController'
  s.summary     = 'Open source alternative to UIActivityViewController, highly customizable and compatible with iOS 5.0.'
  s.source      = { :git => 'https://github.com/steakknife/REActivityViewController.git' }
  s.license     = { :type => 'MIT', :file => 'LICENSE' }
  s.screenshot = 'https://github.com/romaonthego/REActivityViewController/raw/master/Screenshot.png'

  s.platform = :ios, '5.0'
  s.ios.deployment_target = '5.0'
  s.ios.requires_arc = true

  s.subspec 'Activity' do |t|
    t.subspec 'Chrome' do |u|
      u.ios.source_files = 'REActivityViewController/REChromeActivity.{h,m}'
      u.ios.resource_bundle = { 'REActivityViewController' => 'REActivityViewController/REActivityViewController.bundle/Icon_Chrome*.png' }
      u.ios.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Copy' do |u|
      u.ios.source_files = 'REActivityViewController/RECopyActivity.{h,m}'
      u.ios.resource_bundle = { 'REActivityViewController' => 'REActivityViewController/REActivityViewController.bundle/Icon_Copy*.png' }
      u.ios.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Diigo' do |u|
      u.ios.source_files = 'REActivityViewController/REDiigoActivity.{h,m}'
      u.ios.resource_bundle = { 'REActivityViewController' => 'REActivityViewController/REActivityViewController.bundle/Icon_Diigo*.png' }
      u.ios.dependency 'AFNetworking', '~> 1.3'
      u.ios.dependency 'SFHFKeychainUtils', '~> 0.0.1'
      u.ios.dependency 'REActivityViewController/Auth'
      u.ios.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Facebook' do |u|
      u.ios.source_files = 'REActivityViewController/REFacebookActivity.{h,m}'
      u.ios.resource_bundle = { 'REActivityViewController' => 'REActivityViewController/REActivityViewController.bundle/Icon_Facebook*.png' }
      u.ios.dependency 'Facebook-iOS-SDK', '>= 3.5'
      u.ios.dependency 'DEFacebookComposeViewController', '~> 1.0.0'
      u.ios.dependency 'REComposeViewController', '~> 2.1.2'
      u.ios.dependency 'REActivityViewController/Core'
      u.weak_frameworks = 'Social'
    end

    t.subspec 'Instapaper' do |u|
      u.ios.source_files = 'REActivityViewController/REInstapaperActivity.{h,m}'
      u.ios.resource_bundle = { 'REActivityViewController' => 'REActivityViewController/REActivityViewController.bundle/Icon_Instapaper*.png' }
      u.ios.dependency 'AFNetworking', '~> 1.3'
      u.ios.dependency 'SFHFKeychainUtils', '~> 0.0.1'
      u.ios.dependency 'REActivityViewController/Auth'
      u.ios.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Kippt' do |u|
      u.ios.source_files = 'REActivityViewController/REKipptActivity.{h,m}'
      u.ios.resource_bundle = { 'REActivityViewController' => 'REActivityViewController/REActivityViewController.bundle/Icon_Kippt*.png' }
      u.ios.dependency 'AFNetworking', '~> 1.3'
      u.ios.dependency 'SFHFKeychainUtils', '~> 0.0.1'
      u.ios.dependency 'REActivityViewController/Auth'
      u.ios.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Mail' do |u|
      u.ios.source_files = 'REActivityViewController/REMailActivity.{h,m}'
      u.ios.resource_bundle = { 'REActivityViewController' => 'REActivityViewController/REActivityViewController.bundle/Icon_Mail*.png' }
      u.ios.dependency 'REActivityViewController/Core'
      u.ios.frameworks = 'MessageUI'
    end

    t.subspec 'Maps' do |u|
      u.ios.source_files = 'REActivityViewController/REMapsActivity.{h,m}'
      u.ios.resource_bundle = { 'REActivityViewController' => 'REActivityViewController/REActivityViewController.bundle/Icon_Maps*.png' }
      u.ios.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Message' do |u|
      u.ios.source_files = 'REActivityViewController/REMessageActivity.{h,m}'
      u.ios.resource_bundle = { 'REActivityViewController' => 'REActivityViewController/REActivityViewController.bundle/Icon_Message*.png' }
      u.ios.dependency 'REActivityViewController/Core'
      u.ios.frameworks = 'MessageUI'
    end

    t.subspec 'Pocket' do |u|
      u.ios.source_files = 'REActivityViewController/REPocketActivity.{h,m}'
      u.ios.resource_bundle = { 'REActivityViewController' => 'REActivityViewController/REActivityViewController.bundle/Icon_Pocket*.png' }
      u.ios.dependency 'PocketAPI', '~> 1.0.2'
      u.ios.dependency 'AFXAuthClient', '~> 1.0.8'
      u.ios.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Print' do |u|
      u.ios.source_files = 'REActivityViewController/REPrintActivity.{h,m}'
      u.ios.resource_bundle = { 'REActivityViewController' => 'REActivityViewController/REActivityViewController.bundle/Icon_Print*.png' }
      u.ios.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Readability' do |u|
      u.ios.source_files = 'REActivityViewController/REReadabilityActivity.{h,m}'
      u.ios.resource_bundle = { 'REActivityViewController' => 'REActivityViewController/REActivityViewController.bundle/Icon_Readability*.png' }
      u.ios.dependency 'AFXAuthClient', '~> 1.0.8'
      u.ios.dependency 'AFNetworking', '~> 1.3'
      u.ios.dependency 'SFHFKeychainUtils', '~> 0.0.1'
      u.ios.dependency 'REActivityViewController/Auth'
      u.ios.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Safari' do |u|
      u.ios.source_files = 'REActivityViewController/RESafariActivity.{h,m}'
      u.ios.resource_bundle = { 'REActivityViewController' => 'REActivityViewController/REActivityViewController.bundle/Icon_Safari*.png' }
      u.ios.dependency 'REActivityViewController/Core'
    end

    t.subspec 'SaveToCameraRoll' do |u|
      u.ios.source_files = 'REActivityViewController/RESaveToCameraRollActivity.{h,m}'
      u.ios.resource_bundle = { 'REActivityViewController' => 'REActivityViewController/REActivityViewController.bundle/Icon_Photos*.png' }
      u.ios.dependency 'REActivityViewController/Core'
      u.ios.frameworks = 'QuartzCore', 'AssetsLibrary'
    end

    t.subspec 'SinaWeibo' do |u|
      u.ios.source_files = 'REActivityViewController/RESinaWeiboActivity.{h,m}'
      u.ios.resource_bundle = { 'REActivityViewController' => 'REActivityViewController/REActivityViewController.bundle/Icon_Weibo*.png' }
      u.ios.dependency 'REActivityViewController/Core'
      u.ios.dependency 'REActivityViewController/UIImage+Resize'
    end

    t.subspec 'Tumblr' do |u|
      u.ios.source_files = 'REActivityViewController/RETumblrActivity.{h,m}'
      u.ios.resource_bundle = { 'REActivityViewController' => 'REActivityViewController/REActivityViewController.bundle/Icon_Tumblr*.png' }
      u.ios.dependency 'AFXAuthClient', '~> 1.0.8'
      u.ios.dependency 'AFNetworking', '~> 1.3'
      u.ios.dependency 'SFHFKeychainUtils', '~> 0.0.1'
      u.ios.dependency 'REComposeViewController', '~> 2.1.2'
      u.ios.dependency 'REActivityViewController/Auth'
      u.ios.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Twitter' do |u|
      u.ios.source_files = 'REActivityViewController/RETwitterActivity.{h,m}'
      u.ios.resource_bundle = { 'REActivityViewController' => 'REActivityViewController/REActivityViewController.bundle/Icon_Twitter*.png' }
      u.ios.dependency 'REActivityViewController/Core'
      u.ios.frameworks = 'Twitter'
    end

    t.subspec 'VK' do |u|
      u.ios.source_files = 'REActivityViewController/REVKActivity*.{h,m}'
      u.ios.resource_bundle = { 'REActivityViewController' => 'REActivityViewController/REActivityViewController.bundle/Icon_VK*.png' }
      u.ios.dependency 'AFNetworking', '~> 1.3'
      u.ios.dependency 'REActivityViewController/Auth'
      u.ios.dependency 'REActivityViewController/Core'
    end
  end

  s.subspec 'Auth' do |t|
    t.ios.source_files = 'REActivityViewController/REAuth*.{h,m}'
    t.ios.dependency 'REActivityViewController/Core'
  end

  s.subspec 'UIImage+Resize' do |t|
    t.ios.source_files = 'REActivityViewController/UIImage+Resize.{h,m}'
    t.ios.dependency 'REActivityViewController/Core'
  end

  s.subspec 'Core' do |t|
    t.ios.source_files = 'REActivityViewController/REActivit*.{h,m}',
                         'REActivityViewController/REConfig.h'
    t.ios.public_header_files = 'REActivityViewController/REActivit*.h',
                                'REActivityViewController/REConfig.h'
    t.ios.resource_bundle = { 'REActivityViewController' => 'REActivityViewController/REActivityViewController.bundle/{Background,Button,Icon_Custom}*.png' }
    t.ios.frameworks = 'Foundation', 'UIKit', 'SystemConfiguration', 'MobileCoreServices', 'Security'
    s.ios.prefix_header_contents = <<-EOS
    #import <Availability.h>

    #if __IPHONE_OS_VERSION_MIN_REQUIRED
      #import <SystemConfiguration/SystemConfiguration.h>
      #import <MobileCoreServices/MobileCoreServices.h>
      #import <Security/Security.h>
    #else
      #import <SystemConfiguration/SystemConfiguration.h>
      #import <CoreServices/CoreServices.h>
      #import <Security/Security.h>
    #endif
EOS
  end

  s.subspec 'Localization' do |t|
    t.subspec 'de' do |u|
      u.ios.resource_bundle = { 'de.lproj' => 'REActivityViewController/Localizations/de.lproj' }
    end

    t.subspec 'en' do |u|
      u.ios.resource_bundle = { 'en.lproj' => 'REActivityViewController/Localizations/en.lproj' }
    end

    t.subspec 'fr' do |u|
      u.ios.resource_bundle = { 'fr.lproj' => 'REActivityViewController/Localizations/fr.lproj' }
    end

    t.subspec 'ru' do |u|
      u.ios.resource_bundle = { 'ru.lproj' => 'REActivityViewController/Localizations/ru.lproj' }
    end

    t.subspec 'ua' do |u|
      u.ios.resource_bundle = { 'ua.lproj' => 'REActivityViewController/Localizations/ua.lproj' }
    end

    t.subspec 'zh-Hans' do |u|
      u.ios.resource_bundle = { 'zh-Hans.lproj' => 'REActivityViewController/Localizations/zh-Hans.lproj' }
    end
  end

  s.subspec 'Trash' do |t|
    t.ios.resource_bundle = {
    'REActivityViewController' => [
        'REActivityViewController/REActivityViewController.bundle/Icon_{Instagram,Evernote,Wechat}*.png',
        'Localizations/REWeChatActivity.{h,m}'
        ]
    }
  end

  # osx :)
  # your awesome specs here
end
