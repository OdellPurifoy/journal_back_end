# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  has_many :journals, dependent: :destroy

  validates :first_name, :last_name, :email, presence: true
end
