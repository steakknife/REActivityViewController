Pod::Spec.new do |s|
  s.name        = 'REActivityViewController'
  s.version     = '4.0.0'
  s.authors     = { 'Roman Efimov' => 'romefimov@gmail.com' }
  s.homepage    = 'https://github.com/steakknife/REActivityViewController'
  s.summary     = 'Open source alternative to UIActivityViewController, highly customizable and compatible with iOS 5.0.'
  s.source      = { :git => 'https://github.com/steakknife/REActivityViewController.git' }
  s.license     = { :type => 'MIT', :file => 'LICENSE' }
  s.screenshot = 'https://github.com/romaonthego/REActivityViewController/raw/master/Screenshot.png',

  s.platform = :ios, '5.0'
  s.ios.deployment_target = '5.0'
  s.ios.requires_arc = true

  s.ios.subspec 'Activity' do |t|
    t.subspec 'Chrome' do |u|
      u.source_files = 'REActivityViewController/REChromeActivity.{h,m}'
      u.prefix_header_contents = '#define REACTIVITYVIEWCONTROLLER_HAS_CHROME'
      u.resource_bundle = { 'REActivityViewController.bundle' => 'REActivityViewController/REActivityViewController.bundle/Icon_Chrome*.png' }
      u.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Copy' do |u|
      u.source_files = 'REActivityViewController/RECopyActivity.{h,m}'
      u.prefix_header_contents = '#define REACTIVITYVIEWCONTROLLER_HAS_COPY'
      u.resource_bundle = { 'REActivityViewController.bundle' => 'REActivityViewController/REActivityViewController.bundle/Icon_Copy*.png' }
      u.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Diigo' do |u|
      u.source_files = 'REActivityViewController/REDiigoActivity.{h,m}'
      u.prefix_header_contents = '#define REACTIVITYVIEWCONTROLLER_HAS_DIIGO'
      u.resource_bundle = { 'REActivityViewController.bundle' => 'REActivityViewController/REActivityViewController.bundle/Icon_Diigo*.png' }
      u.dependency 'AFNetworking', '~> 1.3'
      u.dependency 'SFHFKeychainUtils', '~> 0.0.1'
      u.dependency 'REActivityViewController/Auth'
      u.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Facebook' do |u|
      u.source_files = 'REActivityViewController/REFacebookActivity.{h,m}'
      u.prefix_header_contents = '#define REACTIVITYVIEWCONTROLLER_HAS_FACEBOOK'
      u.resource_bundle = { 'REActivityViewController.bundle' => 'REActivityViewController/REActivityViewController.bundle/Icon_Facebook*.png' }
      u.dependency 'Facebook-iOS-SDK', '>= 3.5'
      u.dependency 'DEFacebookComposeViewController', '~> 1.0.0'
      u.dependency 'REComposeViewController', '~> 2.1.2'
      u.dependency 'REActivityViewController/Core'
      u.weak_frameworks = 'Social'
    end

    t.subspec 'Instapaper' do |u|
      u.source_files = 'REActivityViewController/REInstapaperActivity.{h,m}'
      u.prefix_header_contents = '#define REACTIVITYVIEWCONTROLLER_HAS_INSTAPAPER'
      u.resource_bundle = { 'REActivityViewController.bundle' => 'REActivityViewController/REActivityViewController.bundle/Icon_Instapaper*.png' }
      u.dependency 'AFNetworking', '~> 1.3'
      u.dependency 'SFHFKeychainUtils', '~> 0.0.1'
      u.dependency 'REActivityViewController/Auth'
      u.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Kippt' do |u|
      u.source_files = 'REActivityViewController/REKipptActivity.{h,m}'
      u.prefix_header_contents = '#define REACTIVITYVIEWCONTROLLER_HAS_KIPPT'
      u.resource_bundle = { 'REActivityViewController.bundle' => 'REActivityViewController/REActivityViewController.bundle/Icon_Kippt*.png' }
      u.dependency 'AFNetworking', '~> 1.3'
      u.dependency 'SFHFKeychainUtils', '~> 0.0.1'
      u.dependency 'REActivityViewController/Auth'
      u.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Mail' do |u|
      u.source_files = 'REActivityViewController/REMailActivity.{h,m}'
      u.prefix_header_contents = '#define REACTIVITYVIEWCONTROLLER_HAS_MAIL'
      u.resource_bundle = { 'REActivityViewController.bundle' => 'REActivityViewController/REActivityViewController.bundle/Icon_Mail*.png' }
      u.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Maps' do |u|
      u.source_files = 'REActivityViewController/REMapsActivity.{h,m}'
      u.prefix_header_contents = '#define REACTIVITYVIEWCONTROLLER_HAS_MAPS'
      u.resource_bundle = { 'REActivityViewController.bundle' => 'REActivityViewController/REActivityViewController.bundle/Icon_Maps*.png' }
      u.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Message' do |u|
      u.source_files = 'REActivityViewController/REMessageActivity.{h,m}'
      u.prefix_header_contents = '#define REACTIVITYVIEWCONTROLLER_HAS_MESSAGE'
      u.resource_bundle = { 'REActivityViewController.bundle' => 'REActivityViewController/REActivityViewController.bundle/Icon_Message*.png' }
      u.dependency 'REActivityViewController/Core'
      u.frameworks = 'MessageUI'
    end

    t.subspec 'Pocket' do |u|
      u.source_files = 'REActivityViewController/REPocketActivity.{h,m}'
      u.prefix_header_contents = '#define REACTIVITYVIEWCONTROLLER_HAS_POCKET'
      u.resource_bundle = { 'REActivityViewController.bundle' => 'REActivityViewController/REActivityViewController.bundle/Icon_Pocket*.png' }
      u.dependency 'PocketAPI', '~> 1.0.2'
      u.dependency 'AFXAuthClient', '~> 1.0.8'
      u.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Print' do |u|
      u.source_files = 'REActivityViewController/REPrintActivity.{h,m}'
      u.prefix_header_contents = '#define REACTIVITYVIEWCONTROLLER_HAS_PRINT'
      u.resource_bundle = { 'REActivityViewController.bundle' => 'REActivityViewController/REActivityViewController.bundle/Icon_Print*.png' }
      u.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Readability' do |u|
      u.source_files = 'REActivityViewController/REReadabilityActivity.{h,m}'
      u.prefix_header_contents = '#define REACTIVITYVIEWCONTROLLER_HAS_READABILITY'
      u.resource_bundle = { 'REActivityViewController.bundle' => 'REActivityViewController/REActivityViewController.bundle/Icon_Readability*.png' }
      u.dependency 'AFXAuthClient', '~> 1.0.8'
      u.dependency 'AFNetworking', '~> 1.3'
      u.dependency 'SFHFKeychainUtils', '~> 0.0.1'
      u.dependency 'REActivityViewController/Auth'
      u.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Safari' do |u|
      u.source_files = 'REActivityViewController/RESafariActivity.{h,m}'
      u.prefix_header_contents = '#define REACTIVITYVIEWCONTROLLER_HAS_SAFARI'
      u.resource_bundle = { 'REActivityViewController.bundle' => 'REActivityViewController/REActivityViewController.bundle/Icon_Safari*.png' }
      u.dependency 'REActivityViewController/Core'
    end

    t.subspec 'SaveToCameraRoll' do |u|
      u.source_files = 'REActivityViewController/RESaveToCameraRollActivity.{h,m}'
      u.prefix_header_contents = '#define REACTIVITYVIEWCONTROLLER_HAS_SAVE_TO_CAMERA_ROLL'
      u.resource_bundle = { 'REActivityViewController.bundle' => 'REActivityViewController/REActivityViewController.bundle/Icon_Photos*.png' }
      u.dependency 'REActivityViewController/Core'
      u.frameworks = 'QuartzCore', 'AssetsLibrary'
    end

    t.subspec 'SinaWeibo' do |u|
      u.source_files = 'REActivityViewController/RESinaWeiboActivity.{h,m}'
      u.prefix_header_contents = '#define REACTIVITYVIEWCONTROLLER_HAS_SINAWEIBO'
      u.resource_bundle = { 'REActivityViewController.bundle' => 'REActivityViewController/REActivityViewController.bundle/Icon_Weibo*.png' }
      u.dependency 'REActivityViewController/Core'
      u.dependency 'REActivityViewController/UIImage+Resize'
    end

    t.subspec 'Tumblr' do |u|
      u.source_files = 'REActivityViewController/RETumblrActivity.{h,m}'
      u.prefix_header_contents = '#define REACTIVITYVIEWCONTROLLER_HAS_TUMBLR'
      u.resource_bundle = { 'REActivityViewController.bundle' => 'REActivityViewController/REActivityViewController.bundle/Icon_Tumblr*.png' }
      u.dependency 'AFXAuthClient', '~> 1.0.8'
      u.dependency 'AFNetworking', '~> 1.3'
      u.dependency 'SFHFKeychainUtils', '~> 0.0.1'
      u.dependency 'REComposeViewController', '~> 2.1.2'
      u.dependency 'REActivityViewController/Auth'
      u.dependency 'REActivityViewController/Core'
    end

    t.subspec 'Twitter' do |u|
      u.source_files = 'REActivityViewController/RETwitterActivity.{h,m}'
      u.prefix_header_contents = '#define REACTIVITYVIEWCONTROLLER_HAS_TWITTER'
      u.resource_bundle = { 'REActivityViewController.bundle' => 'REActivityViewController/REActivityViewController.bundle/Icon_Twitter*.png' }
      u.dependency 'REActivityViewController/Core'
      u.frameworks = 'Twitter'
    end

    t.subspec 'VK' do |u|
      u.source_files = 'REActivityViewController/REVKActivity*.{h,m}'
      u.prefix_header_contents = '#define REACTIVITYVIEWCONTROLLER_HAS_VKONTAKTE'
      u.resource_bundle = { 'REActivityViewController.bundle' => 'REActivityViewController/REActivityViewController.bundle/Icon_VK*.png' }
      u.dependency 'AFNetworking', '~> 1.3'
      u.dependency 'REActivityViewController/Auth'
      u.dependency 'REActivityViewController/Core'
    end
  end

  s.ios.subspec 'Auth' do |t|
    t.source_files = 'REActivityViewController/REAuth*.{h,m}'
    t.dependency 'REActivityViewController/Core'
  end

  s.ios.subspec 'UIImage+Resize' do |t|
    t.source_files = 'REActivityViewController/UIImage+Resize.{h,m}'
    t.dependency 'REActivityViewController/Core'
  end

  s.ios.subspec 'Core' do |t|
    t.source_files = 'REActivityViewController/REActivit*.{h,m}'
    t.public_header_files = 'REActivityViewController/REActivit*.h'
    t.resource_bundle = { 'REActivityViewController.bundle' => 'REActivityViewController/REActivityViewController.bundle/{Background,Button,Icon_Custom}*.png' }
    t.frameworks = 'Foundation', 'UIKit', 'SystemConfiguration', 'MobileCoreServices', 'Security'
    t.prefix_header_contents = <<-EOS
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

  s.ios.subspec 'Localization' do |t|
    t.subspec 'de' do |u|
      u.resource_bundle = { 'de.lproj' => 'REActivityViewController/Localizations/de.lproj' }
    end

    t.subspec 'en' do |u|
      u.resource_bundle = { 'en.lproj' => 'REActivityViewController/Localizations/en.lproj' }
    end

    t.subspec 'fr' do |u|
      u.resource_bundle = { 'fr.lproj' => 'REActivityViewController/Localizations/fr.lproj' }
    end

    t.subspec 'ru' do |u|
      u.resource_bundle = { 'ru.lproj' => 'REActivityViewController/Localizations/ru.lproj' }
    end

    t.subspec 'ua' do |u|
      u.resource_bundle = { 'ua.lproj' => 'REActivityViewController/Localizations/ua.lproj' }
    end

    t.subspec 'zh-Hans' do |u|
      u.resource_bundle = { 'zh-Hans.lproj' => 'REActivityViewController/Localizations/zh-Hans.lproj' }
    end
  end

  s.ios.subspec 'Trash' do |t|
    t.resource_bundle = {
    'REActivityViewController.bundle' => [
        'REActivityViewController/REActivityViewController.bundle/Icon_{Instagram,Evernote,Wechat}*.png',
        'Localizations/REWeChatActivity.{h,m}'
        ]
    }
  end

  # osx :)
  # your awesome specs here
end
