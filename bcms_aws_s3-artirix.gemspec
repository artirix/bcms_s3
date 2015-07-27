$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bcms_s3/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bcms_aws_s3-artirix"
  s.version     = BcmsS3::VERSION
  s.authors     = ["BrowserMedia", "Anthony Underwood", "Neil Middleton", 'Artirix Ltd.']
  s.email       = %q{github@browsermedia.com}
  s.homepage    = %q{https://github.com/artirix/bcms_s3}
  s.summary     = %q{Artirix Fork for bcms_s3 - An S3 module for BrowserCMS}
  s.description = %q{A BrowserCMS module that stores attachments on Amazon S3 rather than on the filesystem.}
  s.rubyforge_project = s.name

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.files -= Dir['lib/tasks/module_tasks.rake']
  s.test_files = Dir["test/**/*"]

  s.add_dependency "aws-sdk", "~> 1.44.0"
  s.add_dependency "browsercms-artirix", "~> 4.0"

  s.add_development_dependency "sqlite3"
end
