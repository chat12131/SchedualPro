class Schedual < ApplicationRecord
  validates :title, presence: true, length: { maximum: 20 }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :memo, length: { maximum: 500 }
  validate :true_date

  def true_date
    if start_date.present? && end_date.present? && start_date >= end_date
      errors.add(:end_date, "終了日は開始日より後にしてください")
    end
  end

end
