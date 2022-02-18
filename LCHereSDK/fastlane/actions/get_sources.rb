module Fastlane
  module Actions
    module SharedValues
      GET_SOURCES_CUSTOM_VALUE = :GET_SOURCES_CUSTOM_VALUE
    end

    class GetSourcesAction < Action
       def self.run(params)
        
        require 'cocoapods-core'
        require "cocoapods"

        # repos_dir = Pathname.new('~/.cocoapods/repos').expand_path

        # pods = Pod::Source.new(repos_dir).pods

        pods = Pod::Config.new(use_user_settings:true).sources_manager.all

        result = []

        pods.each { |x|
            result.push x.url.to_s
        }

        return result
      end

      def self.description
        "获取repo的源地址"
      end

      def self.details
        "拿到podrepo的源地址就可以自动添加到对应的pod_repo_push的参数不必手动输入"
      end

      def self.available_options
      end

      def self.return_value
      end

      def self.authors
        ["heyanwen2009@hotmail.com/heew"]
      end

      def self.is_supported?(platform)
        platform == :ios
      end
    end
  end
end
