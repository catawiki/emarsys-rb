# frozen_string_literal: true
module Emarsys

  # Methods for the Source API
  #
  #
  class Source < DataObject
    class << self

      # List sources
      #
      # @return [Hash] List of sources
      # @example
      #   Emarsys::Source.collection
      def collection(account: nil)
        get account, 'source', {}
      end

      # Create a new source
      #
      # @param name [String] Name of the new source
      # @return [Hash] Result data
      # @example
      #   Emarsys::Source.create("My new source")
      def create(name:, account: nil)
        post account, 'source/create', {:name => name}
      end

      # Destroy a specific source
      #
      # @param id [Integer, String] The internal emarsys id
      # @return [Hash] Result data
      # @example
      #   Emarsys::Source.destroy(2)
      def destroy(id, account: nil)
        delete account, "source/#{id}", {}
      end

    end
  end
end
