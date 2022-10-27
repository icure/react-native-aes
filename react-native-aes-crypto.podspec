require "json"

Pod::Spec.new do |s|
  # NPM package specification
  package = JSON.parse(File.read(File.join(File.dirname(__FILE__), "package.json")))

  s.name          = 'react-native-aes-crypto'
  s.version       = '2.2.1'
  s.summary       = 'Native module for AES encryption'
  s.author        = "tectiv3"
  s.license       = 'MIT'
  s.requires_arc  = true
  s.homepage      = "https://github.com/icure/react-native-aes"
  s.source        = { :git => 'https://github.com/icure/react-native-aes', :tag => "v#{s.version}" }
  s.platform      = :ios, '9.0'
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency "React-Core"
end
