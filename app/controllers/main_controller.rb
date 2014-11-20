class MainController < ApplicationController
  def get_data_for_chart
    @campaign = Campaign.find(1)
    data = {}
    @campaign.comments.each do |comment|
      created_date = comment.created_at.strftime('%d %b %Y')
      if data[created_date].nil?
        data[created_date] = {}
        data[created_date][:total] = 1
        data[created_date][:sold] = (comment.value == 'Sold' ? 1 : 0)
      else
        data[created_date][:total] += 1
        data[created_date][:sold] += 1 if comment.value == 'Sold'
      end
    end
    render json: data
  end
end
