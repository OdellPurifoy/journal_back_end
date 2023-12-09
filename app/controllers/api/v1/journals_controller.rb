# frozen_string_literal: true

module Api
  module V1
    class JournalsController < ApplicationController
      def index
        journals = Journal.all

        render json: {
          status: { code: 200, message: 'All Journals' },
          journals: JournalSerializer.new(journals).serializable_hash
        }, status: :ok
      end
    end
  end
end
