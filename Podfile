# Uncomment the next line to define a global platform for your project
platform :ios, '15.0'

target 'KeepQuantizeYourself' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for KeepQuantizeYourself
  pod 'AFNetworking'
  pod 'Masonry'
  pod 'ReactiveObjC'

  target 'KeepQuantizeYourselfTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'KeepQuantizeYourselfUITests' do
    # Pods for testing
  end
  
  
  

end



# ✅ 修复 AFNetworking 在 Xcode 26 下 netinet6/in6.h 找不到的问题
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      # 补充 SDK 中 netinet6 的头文件路径
      config.build_settings['HEADER_SEARCH_PATHS'] ||= '$(inherited)'
      config.build_settings['HEADER_SEARCH_PATHS'] += ' $(SDKROOT)/usr/include/netinet6'
      # 关闭对引号 include 框架头的警告（避免次生报错）
      config.build_settings['CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER'] = 'NO'
    end
  end
end
