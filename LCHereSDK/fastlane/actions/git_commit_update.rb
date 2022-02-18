module Fastlane
  module Actions

    class GitCommitUpdateAction < Action
           
      def self.run(params)
        `git commit -m #{params[:message].shellescape}`  

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
      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :message,
                                       description: "The commit message that should be used")
        ]
      end
      def self.is_supported?(platform)
        platform == :ios
      end
    end
  end
end
