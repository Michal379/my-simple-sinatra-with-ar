class Game < ActiveRecord::Base
    #  attr_accessor :image_url
     has_many :users
end