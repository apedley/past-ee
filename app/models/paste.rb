class Paste < ActiveRecord::Base

validates :body, presence: true
before_save :create_slug


private


def create_slug

end

end
