class ReportsController < ApplicationController
  before_action :logged_in_user, only: [:create]

  def create
    @report = current_user.reports.build report_params
    if @report.save
      respond_to do |format|
      format.html {  render partial: 'reviews/reported_form' }
      format.js
      end
    end
  end

  private

  def report_params
    params.require(:report).permit :reason, :review_id
  end
end
