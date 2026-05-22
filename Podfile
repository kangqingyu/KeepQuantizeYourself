# Uncomment the next line to define a global platform for your project
platform :ios, '15.0'

target 'KeepQuantizeYourself' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for KeepQuantizeYourself
# pod 'AFNetworking'
  pod 'AFNetworking', :git => 'https://github.com/AFNetworking/AFNetworking.git', :branch => 'master'
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



## ✅ 修复 AFNetworking 在 Xcode 26 下 netinet6/in6.h 找不到的问题
#post_install do |installer|
#  installer.pods_project.targets.each do |target|
#    target.build_configurations.each do |config|
#      # ✅ 修复1：统一最低部署目标，消除 libarclite 依赖
#      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
#      
#      
#      # 补充 SDK 中 netinet6 的头文件路径
#      config.build_settings['HEADER_SEARCH_PATHS'] ||= '$(inherited)'
#      config.build_settings['HEADER_SEARCH_PATHS'] += ' $(SDKROOT)/usr/include/netinet6'
#      # 关闭对引号 include 框架头的警告（避免次生报错）
#      config.build_settings['CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER'] = 'NO'
#    end
#  end
#end


# 统一管理 Hook
post_install do |installer|
  # 1. 修复 AFNetworking 在 Xcode 找不到 netinet6/in6.h 的报错
  reachability_header = 'Pods/AFNetworking/AFNetworking/AFNetworkReachabilityManager.h'
  if File.exist?(reachability_header)
    content = File.read(reachability_header)
    if content.include?("#import <netinet6/in6.h>")
      new_content = content.gsub("#import <netinet6/in6.h>", "// #import <netinet6/in6.h> // 兼容 Xcode 16")
      File.write(reachability_header, new_content)
    end
  end

  # 2. 核心修复：兼容新版 CocoaPods 的多项目结构，强制将所有子工程、所有 Target 的版本全部提升至 15.0
  # 这样可以彻底绕过 libarclite 报错
  projects = installer.respond_to?(:generated_projects) ? installer.generated_projects : [installer.pods_project]
  projects.each do |project|
    project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
      end
    end
  end
end
