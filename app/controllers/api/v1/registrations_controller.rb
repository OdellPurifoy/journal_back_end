# frozen_string_literal: true

module Api
  module V1
    class RegistrationsController < ApplicationController
      def create
        user = User.create!(user_params)

        if user.persisted?
          render json: UserSerializer.new(user).serializable_hash[:data][:attributes], status: :ok
        else
          render json: user.errors.full_messages.to_sentence,
                 status: :unprocessable_entity
        end
      end

      private

      def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
      end
    end
  end
end
