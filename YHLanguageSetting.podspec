Pod::Spec.new do |s|

  s.name         = "YHLanguageSetting"
  s.version      = "0.2.0"
  s.summary      = "语言设置"
  s.description  = <<-DESC
  语言设置。
                   DESC

  s.homepage     = "https://github.com/suweiz19890921/YHLanguageSetting"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "李傲" => "814325429@qq.com" }

  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/suweiz19890921/YHLanguageSetting.git", :tag => s.version.to_s }

  # s.source_files  = "YHLanguageSetting", "YHLanguageSetting/**/*.{h,m}"


  s.subspec 'Setting' do |ss| 
    ss.ios.deployment_target = '8.0'
    ss.source_files = 'YHLanguageSetting/YHLanguageSetting.{h,m}'
    ss.public_header_files = 'YHLanguageSetting/YHLanguageSetting.h'
    ss.dependency 'MBProgressHUD'
    ss.dependency 'GZIP'
    end


  s.subspec 'UI' do |ss| 
    ss.ios.deployment_target = '8.0'
    ss.source_files = 'YHLanguageSetting/LanguageSettingViewController.{h,m}'
    ss.public_header_files = 'YHLanguageSetting/LanguageSettingViewController.h'
    ss.dependency 'YHLanguageSetting/Setting'
  end

end
