Pod::Spec.new do |s|
  s.name     = 'ChikaRegistrar'
  s.version  = '0.0.1'
  s.summary  = 'Registration Module for Chika'
  s.platform = :ios, '11.0'
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage = 'https://github.com/mownier/chika-registrar'
  s.author   = { 'Mounir Ybanez' => 'rinuom91@gmail.com' }
  s.source   = { :git => 'https://github.com/mownier/chika-registrar.git', :tag => s.version.to_s }
  s.source_files = 'ChikaRegistrar/Source/*.swift'
  s.resources = ['ChikaRegistrar/Source/Registrar.storyboard']
  s.requires_arc = true
  s.dependency 'ChikaFirebase/Auth:Registrar'
end
