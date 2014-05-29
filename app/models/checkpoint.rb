class Checkpoint < ActiveRecord::Base
  belongs_to :course
  has_many :choices, dependent: :destroy
end
