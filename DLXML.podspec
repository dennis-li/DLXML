Pod::Spec.new do |s|
  s.name         = "DLXML"
s.version      = "0.0.3"
  s.summary      = "DLXML"
  s.description  = <<-DESC
	                    React description.
			                       DESC
  s.homepage     = "https://scm.qiyi.domain/#/admin/projects/mobile-ios/pods/React"
  s.license      = { :type => 'MIT', :text => <<-LICENSE
							                       LICENSE
										                          }

  s.author       = { "Dennis Lee" => "lixu.dennislee@gmail.com" }

  s.platform     = :ios
  s.ios.deployment_target = '8.0'

  s.source       = { :git => "https://github.com/dennis-li/DLXML.git", :tag => s.version }

  s.source_files = 'DLXML/*.{h,m}'
  s.public_header_files = 'DLXML/*.h'
 s.resources = ['Resources/*']

					         
# s.library = 'c++'

 s.requires_arc = true
			
  end

