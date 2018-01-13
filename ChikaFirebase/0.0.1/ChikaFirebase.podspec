Pod::Spec.new do |s|
  s.name     = 'ChikaFirebase'
  s.version  = '0.0.1'
  s.summary  = 'Chika services implemented via Firebase'
  s.platform = :ios, '11.0'
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage = 'https://github.com/mownier/chika-firebase'
  s.author   = { 'Mounir Ybanez' => 'rinuom91@gmail.com' }
  s.source   = { :git => 'https://github.com/mownier/chika-firebase.git', :tag => s.version.to_s }
  s.requires_arc = true  

  s.subspec 'Auth' do |ss|
    ss.dependency 'FirebaseAuth'

    ss.dependency 'ChikaCore/Error'
    ss.dependency 'ChikaCore/Service:Auth'
   
    ss.dependency 'ChikaFirebase/Validator:Auth'
   
    ss.source_files = 'ChikaFirebase/Source/Service/Auth/*.swift'
  end

  s.subspec 'Query' do |ss|
    ss.dependency 'FirebaseAuth'
    ss.dependency 'FirebaseDatabase'
    
    ss.dependency 'ChikaCore/Error'
    ss.dependency 'ChikaCore/Service:Query'
    
    ss.source_files = 'ChikaFirebase/Source/Service/Query/*.swift'
  end

  s.subspec 'Validator' do |ss|
    ss.dependency 'ChikaFirebase/Validator:Auth'
  end

  s.subspec 'Validator:Auth' do |ss|
    ss.source_files = 'ChikaFirebase/Source/Validator/AuthValidator.swift'
  end

end
