module Fastlane
  module Actions
    module SharedValues
      POD_SPEC_LINT_CUSTOM_VALUE = :POD_SPEC_LINT_CUSTOM_VALUE
    end

    class PodSpecLintAction < Action

      def self.run(params)
        `pod spec lint`  

      end
      
      def self.description
        "A short description with <= 80 characters of what this action does"
      end

      def self.details

        "You can use this action to do cool things..."
      end



      def self.return_value

      end

      def self.authors

        ["Your GitHub/Twitter Name"]
      end

      def self.is_supported?(platform)
        platform == :ios
      end
    end
  end
end
