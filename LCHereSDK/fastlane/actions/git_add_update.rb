module Fastlane
  module Actions

    class GitAddUpdateAction < Action
      
      def self.run(params)
        `git add .`  

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
        ["heyanwen2009@hotmail.com/Heew"]
      end

      def self.is_supported?(platform)
        platform == :ios
      end
    end
  end
end
