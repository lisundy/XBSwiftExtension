Pod::Spec.new do |s|
s.name         = 'XBSwiftExtension'
s.version      = '0.0.1'
s.summary      = 'Easy to develop swift project'
s.homepage     = 'https://github.com/lisundy/XBSwiftExtension'
s.license      = 'MIT'
s.authors      = {'Lee' => 'xiaobingli92@163.com'}
s.platform     = :ios, '8.0'
s.source       = {:git => 'https://github.com/lisundy/XBSwiftExtension.git', :tag => s.version}
s.requires_arc = true
s.source_files     = 'Core/**/*.{h,m,swift}'
end
