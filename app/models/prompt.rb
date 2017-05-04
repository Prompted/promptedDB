class Prompt < ApplicationRecord
  validates_presence_of :type_of
  validates_presence_of :content
  #validates_presence_of :due_date
  validates_presence_of :status
  #validates_presence_of :voting_closed
  validate :can_only_be_open_if_duedate_and_votingclosed_are_set


  def can_only_be_open_if_duedate_and_votingclosed_are_set
    if self.status == 'open' && (!self.due_date.present? || !self.voting_closed.present?)
        errors.add(:cant_open, "Cannot open a prompt for submissions without a due date and voting closed date")
    end
  end
end
