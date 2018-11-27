class SubsidiesController < ApplicationController
  def index
    @today_date = Date.today
    @subsidies = Subsidy.all
  end
end
