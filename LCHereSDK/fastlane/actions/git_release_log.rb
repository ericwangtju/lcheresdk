module Fastlane
  module Actions

    class GitReleaseLogAction < Action
      def self.run(params)
        commits = `git log -5 --pretty=format:"%ar : %s"`.split("\n")
        result = ""
        commits.each { |x|
                if x.length > 0 then
                        if x.start_with?("update build version") then
                            break
                        end
                        if x.start_with?("Merge pull request") then
                            next
                        end

                                result += (x + "\n")

                end
        }
        return result
      end


      def self.description
        "获取gitlog信息"
      end

      def self.details
        "获取最近一次提交的gitlog信息以便展示测试人员"
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
