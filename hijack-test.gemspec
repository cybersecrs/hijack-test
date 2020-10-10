# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = 'hijack-test'
  s.version     = '1.0.2'
  s.summary     = 'Clipboard Hijack Test'
  s.description = <<~DESC
    Hijack-Test check your device on clipboard hijackers.  
    Prevent loosing Bitcoins and test your device.
  DESC
  s.authors     = ['Linuxander']
  s.files       = ['lib/hijack-test.rb']
  s.homepage    = 'https://cybersecrs.github.io/projects/hijack-test'
  s.license     = 'GPL-3.0-only'

  s.metadata['homepage_uri']    = 'https://cybersecrs.github.io/project/hijack-test'
  s.metadata['source_code_uri'] = 'https://www.github.com/cybersecrs/hijack-test'
  s.metadata['bug_tracker_uri'] = 'https://www.github.com/cybersecrs/hijack-test/issues'

  s.bindir        = ['bin']
  s.executables   = ['hit']
  s.require_paths = ['lib']

  s.files = ['bin/hit', 'lib/hijack-test.rb', 'LICENSE', 'README.md', 'hijack-test.gemspec', 'Gemfile', 'CODE_OF_CONDUCT.md']

  s.add_runtime_dependency 'clipboard'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
end
