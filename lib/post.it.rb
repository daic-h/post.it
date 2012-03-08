$:.push File.expand_path(File.dirname(__FILE__))

require 'sqlite3'
require 'multi_json'
require 'post.it/storage'
require 'post.it/storage/sqlite'
require 'post.it/model'
require 'post.it/model/base'
require 'post.it/model/post'
require 'post.it/model/tag'
require 'post.it/util/sql_builder'
require 'post.it/util/color'
require 'post.it/config'
require 'post.it/command'

module PostIt
  VERSION = '0.0.1'

  class << self
    def config
      @config ||= PostIt::Config.new
    end

    def storage
      @storage ||= PostIt::Storage.resolve(config['storage'])
    end

    def debug
      true
    end

    def silent
      false
    end
  end
end


# for debugg
# p PostIt.storage
