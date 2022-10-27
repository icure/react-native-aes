require "json"

Pod::Spec.new do |s|
  # NPM package specification
  package = JSON.parse(File.read(File.join(File.dirname(__FILE__), "package.json")))

  s.name          = '@icure/react-native-aes-crypto'
  s.version       = package["version"]
  s.summary       = package["description"]
  s.homepage      = package["homepage"]
  s.license       = package["license"]
  s.authors       = package["author"]["name"]
  s.requires_arc  = true
  s.source        = { :git => package["repository"]["url"], :tag => "#{s.version}" }
  s.platform      = :ios, '9.0'
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency "React-Core"
end
