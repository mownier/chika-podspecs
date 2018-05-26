Pod::Spec.new do |s|
  s.name     = 'ChikaWelcome'
  s.version  = '0.0.1'
  s.summary  = 'Welcome Module for Chika'
  s.platform = :ios, '11.0'
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage = 'https://github.com/mownier/chika-welcome'
  s.author   = { 'Mounir Ybanez' => 'rinuom91@gmail.com' }
  s.source   = { :git => 'https://github.com/mownier/chika-welcome.git', :tag => s.version.to_s }
  s.source_files = 'ChikaWelcome/Source/*.swift'
  s.resources = ['ChikaWelcome/Source/Welcome.storyboard']
  s.requires_arc = true
end
