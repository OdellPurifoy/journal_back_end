# frozen_string_literal: true

class Journal < ApplicationRecord
  belongs_to :user

  validates :title, :kind, presence: true
end
