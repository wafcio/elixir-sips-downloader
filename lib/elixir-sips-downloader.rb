require 'yaml'
require 'fileutils'
require 'rss'
require 'rexml/document'
require 'set'
require 'cgi'
require 'logger'
require 'pathname'

# Root module for Elixir Sips downloader
module ElixirSipsDownloader
  class << self
    # The Logger for ElixirSipsDownloader.
    attr_writer :logger

    # @return [Logger] the Logger for ElixirSipsDownloader
    def logger
      @logger ||= Logger.new(STDOUT).tap { |l| l.level = Logger::INFO }
    end
  end
end

require 'bundler/setup'
require 'mechanize'

require_relative 'elixir_sips_downloader/exceptions'
require_relative 'elixir_sips_downloader/downloadables'

require_relative 'elixir_sips_downloader/extractors'

require_relative 'elixir_sips_downloader/config'
require_relative 'elixir_sips_downloader/login'
require_relative 'elixir_sips_downloader/feed_fetcher'
