class WidgetsController < ApplicationController
  def index
    render json: {widgets: [1,2,3]}
  end
end
