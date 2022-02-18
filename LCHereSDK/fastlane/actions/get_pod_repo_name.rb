module Fastlane
  module Actions

    class GetPodRepoNameAction < Action
      def self.run(params)
        
        require 'cocoapods-core'
        require "cocoapods"

        repos_dir = Pathname.new('~/.cocoapods/repos').expand_path

        pods = Pod::Source.new(repos_dir).pods

        return choose(*pods)

      end

      def self.description
        "获取reponame"
      end

      def self.details
        "拿到podreponame就可以自动提交到对应的podrepo索引库不必手动输入"
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
