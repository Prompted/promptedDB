class Prompt < ApplicationRecord
  validates_presence_of :type_of
  validates_presence_of :content
  #validates_presence_of :due_date
  validates_presence_of :status
  #validates_presence_of :voting_closed
end
