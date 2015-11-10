class Post < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  has_many :comments, dependent: :destroy

  default_scope { order('created_at DESC') }

  validates :name, length: { minimum: 5 }, presence: true
  validates :description, length: { minimum: 20 }, presence: true
  validates :topic, presence: true
  validates :user, presence: true

end
