module Api
  module V1
    class DictionariesController < ApplicationController
      def index
        @dictionatie_items = DictionaryItem.all
        render json: @dictionatie_items
      end

      private

      def dictionaries_params
      end
    end
  end
end
