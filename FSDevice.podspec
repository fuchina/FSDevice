Pod::Spec.new do |s|
  s.name         = "FSDevice"
  s.version      = "0.0.1"
  s.summary      = "FSDevice,show some infomations of app state"
  s.homepage         = 'https://github.com/fuchina/FSDevice'
  s.description  = <<-DESC
	获取app的一些运行状态
                   DESC

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "fudongdong" => "1245102331@qq.com" }
  s.platform     = :ios, "8.0"
  s.source           = { :git => 'https://github.com/fuchina/FSDevice.git', :tag => s.version.to_s }
  s.source_files = 'FSDevice/Classes/*'
  s.requires_arc = true
  s.frameworks = 'UIKit'

end
