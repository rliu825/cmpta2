class Raydb < ActiveRecord::Base
    validates_presence_of :name
    validates_presence_of :gender
end
