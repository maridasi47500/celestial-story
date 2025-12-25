class Story < ApplicationRecord
belongs_to :mytype
has_and_belongs_to_many :storypeople, :join_table => :storyhaspeople
end
