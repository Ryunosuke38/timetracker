class ComponentsController < ApplicationController
  layout false

  def load
    respond_to do |format|
      format.html { render "components/#{params[:name]}" }
    end
  end
end
