class UsersController < ApplicationController
  def show
    @pin = Pin.find(params[:id])
    @pins = Pin.all.order("created_at DESC")
  end
end
