module Spree::Facebook
      include PreferenceAccess

  class Config < Spree::Config
    class << self
      def instance
        return nil unless ActiveRecord::Base.connection.tables.include?('configurations')
        FacebookConfiguration.find_or_create_by_name("Facebook configuration")
      end
    end
  end
end
