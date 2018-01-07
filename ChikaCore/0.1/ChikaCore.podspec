Pod::Spec.new do |s|
  s.name     = 'ChikaCore'
  s.version  = '0.1'
  s.summary  = 'Core for Chika iOS App'
  s.platform = :ios, '11.0'
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage = 'https://github.com/mownier/chika-core'
  s.author   = { 'Mounir Ybanez' => 'rinuom91@gmail.com' }
  s.source   = { :git => 'https://github.com/mownier/chika-core.git', :tag => s.version.to_s }
  s.requires_arc = true

  s.subspec 'Error' do |ss|
    ss.source_files = 'ChikaCore/Source/Error/*.swift'
  end

  s.subspec 'Result' do |ss|
    ss.source_files = 'ChikaCore/Source/Result/*.swift'
  end

  s.subspec 'Model' do |ss|
    ss.dependency 'ChikaCore/Model:Unique'
    ss.dependency 'ChikaCore/Model:Store'
    ss.dependency 'ChikaCore/Model:Auth'
  end
  
  s.subspec 'Model:Unique' do |ss|
    ss.source_files = 'ChikaCore/Source/Model/Unique/*.swift'
  end

  s.subspec 'Model:Auth' do |ss|
    ss.source_files = 'ChikaCore/Source/Model/Auth/*.swift'
    ss.dependency 'ChikaCore/Model:Unique'
  end

  s.subspec 'Model:Store' do |ss|
    ss.source_files = 'ChikaCore/Source/Model/Store/*.swift'
    ss.dependency 'ChikaCore/Model:Unique'
  end

  s.subspec 'Service' do |ss|
    ss.dependency 'ChikaCore/Service:Auth'
  end

  s.subspec 'Service:Auth' do |ss|
    ss.source_files = 'ChikaCore/Source/Service/Auth/*.swift'
    ss.dependency 'ChikaCore/Model:Auth'
    ss.dependency 'ChikaCore/Result'
  end

end

