class Chat < ApplicationRecord
  belongs_to :user

  attr_accessor :message
end
