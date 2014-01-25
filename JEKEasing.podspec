Pod::Spec.new do |s|
  s.name         = 'JEKEasing'
  s.version      = '1.0.0'
  s.summary      = 'Dead simple animation easing curves for iOS. '
  s.homepage     = 'https://www.github.com/jordanekay/JEKEasing'
  s.platform     = :ios, '6.0'
  s.requires_arc = true
  s.author = {
    'Jordan Kay' => 'jordanekay@mac.com'
  }
  s.source = {
    :git => 'https://github.com/jordanekay/JEKEasing.git',
    :tag => '1.0.0'
  }
  s.license = {
    :type => 'MIT'
  }
  s.source_files = 'JEKEasing/JEKEasing/*.{h,m}'
end
