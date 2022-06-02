Pod::Spec.new do |spec|
  spec.name         = "AFNetworkingModule"
  spec.ios.deployment_target = '15.0'
  spec.version      = "0.0.1"
  spec.summary      = "AFNetworkingModule framework"
  spec.description  = "AFNetworkingModule framework, including example app"
  spec.homepage     = "https://github.com/carlamorales"
  spec.license      = "MIT"
  spec.author       = "carlamorales"
  spec.source       = { 
	:git => "https://github.com/carlamorales/AFNetworkingModule.git", 
	:tag => "#{spec.version}"
  }
  spec.source_files  = "AFNetworkingModule", "AFNetworkingModule/**/*.{h,m}"
  spec.exclude_files = "AFNetworkingModule/Exclude"
end