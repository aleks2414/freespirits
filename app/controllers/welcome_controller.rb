class WelcomeController < ApplicationController
  def index
  	@contact = Contact.new
  	@events = Event.where("fecha_real >= ?", Time.zone.now.beginning_of_day).limit(1)
  	@posts = Post.all.limit(3).order('id DESC')
  end
end
