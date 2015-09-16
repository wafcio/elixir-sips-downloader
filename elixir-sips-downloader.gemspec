$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'elixir_sips_downloader/version'

Gem::Specification.new do |s|
  s.name             = 'elixir-sips-downloader'
  s.version          = ElixirSipsDownloader::VERSION
  s.summary          = 'Downloader for Josh Adams Elixir Sips'
  s.description      = 'It downloads all episodes and attachments, organizes '\
               'them for later use and keeps an easy to use index of episodes.'

  s.authors          = ['Leandro Facchinetti', 'Kevin Elliott']
  s.email            = ['ruby-tapas-downloader@leafac.com', 'kevin@welikeinc.com']
  s.files            = `git ls-files -- {lib,config}/*`.split("\n")
  s.files           += ['License.txt']
  s.test_files       = `git ls-files -- {spec}/*`.split("\n")
  s.extra_rdoc_files = ['README.md']
  s.executables      = `git ls-files -- bin/*`.split("\n").map{ |f|
    File.basename(f)
  }
  s.homepage         = 'https://github.com/kevinelliott/elixir-sips-downloader'
  s.license          = 'wtfpl'
  s.require_paths    = ['lib']
  s.required_ruby_version     = '>= 2.0.0'

  s.add_runtime_dependency 'mechanize', '~> 2.7'
  s.add_runtime_dependency 'nokogiri', '~> 1.6.6.2'
  s.add_runtime_dependency 'user-configurations', '~> 0.1'
  s.add_runtime_dependency 'thor', '~> 0.19'

  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'pry-byebug', '~> 1.3'
  s.add_development_dependency 'coveralls', '>= 0.7.0'
end
