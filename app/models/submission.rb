class Submission < ApplicationRecord
  validates_presence_of :type_of
  validates_presence_of :url
  validates_presence_of :submitted_at

  belongs_to :user
  belongs_to :prompt
end
