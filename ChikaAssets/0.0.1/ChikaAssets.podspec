Pod::Spec.new do |s|
  s.name     = 'ChikaAssets'
  s.version  = '0.0.1'
  s.summary  = 'Assets for Chika'
  s.platform = :ios, '11.0'
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage = 'https://github.com/mownier/chika-assets'
  s.author   = { 'Mounir Ybanez' => 'rinuom91@gmail.com' }
  s.source   = { :git => 'https://github.com/mownier/chika-assets.git', :tag => s.version.to_s }
  s.resources = ['ChikaAssets/Source/ChikaAssets.xcassets']
end
