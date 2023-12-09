# frozen_string_literal: true

class JournalSerializer
  include JSONAPI::Serializer
  attributes :title, :kind, :user
end
