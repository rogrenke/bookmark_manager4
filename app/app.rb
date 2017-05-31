require 'sinatra/base'
require_relative 'models/link'

class List < Sinatra::Base

  get '/' do
    @links = []
    all_links = Link.all
    all_links.each { |link| @links << [link.title, link.url]}
    erb :links
  end




end
