class Message < ActiveRecord::Base
  validate :presence => :content
end
