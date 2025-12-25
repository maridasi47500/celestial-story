class User < ApplicationRecord
  attr_accessor :mypeople
  has_many :storypeople
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  before_update :hey
  before_create :hey
  def hey
    if self.mypeople
      self.storypeople=self.mypeople.split(",").map {|h| Storyperson.find_or_initialize_by(name: h.strip.squish, user_id: self.id)}
    end
  end
end
