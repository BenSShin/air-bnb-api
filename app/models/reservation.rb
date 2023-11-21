class Reservation < ApplicationRecord
  def end_date_is_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "cannot be before the start date")
    end
  end

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "cannot be in the past")
    end
  end

  validates_presence_of :start_date, :end_date
  validate :end_date_is_after_start_date
  validate :start_date_cannot_be_in_the_past

  belongs_to :user
  belongs_to :room
  has_many :reviews
end
