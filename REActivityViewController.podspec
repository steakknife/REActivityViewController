Pod::Spec.new do |s|
  s.name        = 'REActivityViewController'
  s.version     = '4.0.0'
  s.authors     = { 'Roman Efimov' => 'romefimov@gmail.com' }
  s.homepage    = 'https://github.com/steakknife/REActivityViewController'
  s.summary     = 'Open source alternative to UIActivityViewController, highly customizable and compatible with iOS 5.0.'
  s.source      = { :git => 'https://github.com/steakknife/REActivityViewController.git' }
                    :tag => '1.6.5' }
  s.license     = { :type => "MIT", :file => "LICENSE" }

  s.platform = :ios, '5.0'
  s.requires_arc = true
  s.source_files = 'REActivityViewController'
  s.public_header_files = 'REActivityViewController/*.h'
  s.resources = "REActivityViewController/REActivityViewController.bundle", "REActivityViewController/Localizations/*.lproj"

  s.ios.deployment_target = '5.0'
  s.ios.frameworks = 'QuartzCore', 'AssetsLibrary'

  s.dependency 'AFNetworking', '~> 1.3'
  s.dependency 'REComposeViewController', '~> 2.1.2'
  s.dependency 'SFHFKeychainUtils', '~> 0.0.1'
  s.prefix_header_contents = <<-EOS
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
