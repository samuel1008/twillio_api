class Person < ApplicationRecord
  belongs_to :user
  has_one :conversation

  after_create :create_conversation

  def create_conversation
  	conversation.find_or_create(person: self, user: self.user)
  end
end
