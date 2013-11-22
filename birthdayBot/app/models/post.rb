class Post < ActiveRecord::Base
  attr_accessible :link, :message, :name
end
