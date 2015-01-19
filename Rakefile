# -*- coding: utf-8 -*-
$:.unshift('/Library/RubyMotion/lib')
require 'motion/project/template/ios'

require 'bundler'
Bundler.require

# require 'bubble-wrap'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings

  app.name = 'random_mayonaise'
  app.identifier = 'com.your_domain_here.random_mayonaise'

  app.short_version = '0.1.0'
  # Get version from git
  #app.version = (`git rev-list HEAD --count`.strip.to_i).to_s
  app.version = app.short_version

  # SDK 8 for iOS 8 and above
  # app.sdk_version = '8.1'
  # app.deployment_target = '8.0'

  # SDK 8 for iOS 7 and above
  app.sdk_version = '8.1'
  app.deployment_target = '7.1'

  # Or for SDK 7
  # app.sdk_version = '7.1'
  # app.deployment_target = '7.0'

  app.icons = Dir.glob("resources/icon*.png").map{|icon| icon.split("/").last}

  # prerendered_icon is only needed in iOS 6
  #app.prerendered_icon = true

  app.device_family = [:iphone, :ipad]
  app.interface_orientations = [:portrait, :landscape_left, :landscape_right, :portrait_upside_down]

  app.files += Dir.glob(File.join(app.project_dir, 'lib/**/*.rb'))
  
  # app.fonts = ['Oswald-Regular.ttf', 'FontAwesome.otf'] # These go in /resources
  # app.frameworks += %w(QuartzCore CoreGraphics MediaPlayer MessageUI CoreData)
  #
  # app.vendor_project('vendor/Flurry', :static)
  # app.vendor_project('vendor/DSLCalendarView', :static, :cflags => '-fobjc-arc') # Using arc
  #
  # app.pods do
  #   pod 'AFNetworking'
  #   pod 'JGProgressHUD'
  #   pod 'SVProgressHUD'
  #   pod 'JMImageCache'
  # end
  
  app.development do
    app.codesign_certificate = "iPhone Developer: YOURNAME"
    app.provisioning_profile = "signing/random_mayonaise.mobileprovision"
  end

  app.release do
    app.entitlements['get-task-allow'] = false
    app.codesign_certificate = 'iPhone Distribution: YOURNAME'
    app.provisioning_profile = "signing/random_mayonaise.mobileprovision"
    app.seed_id = "YOUR_SEED_ID"
    app.entitlements['application-identifier'] = app.seed_id + '.' + app.identifier
    app.entitlements['keychain-access-groups'] = [ app.seed_id + '.' + app.identifier ]
  end
 
  puts "Name: #{app.name}"
  puts "Using profile: #{app.provisioning_profile}"
  puts "Using certificate: #{app.codesign_certificate}"
end

task :"build:simulator" => :"schema:build"
