class Report < ApplicationRecord
  belongs_to :review
  belongs_to :user
  validates :review_id, presence: true
  validates :user_id, presence: true
  scope :reported, -> (review_id, user_id){where("review_id = ? AND user_id = ?", review_id, user_id)}

  def self.to_csv
    CSV.generate(headers: true) do |csv|
      csv << %w{ report_id reporter review_title }
      Report.all.each do |report|
        csv << [report.id, report.user.name, report.review.title]
      end
    end
  end
end
