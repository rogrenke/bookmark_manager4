require 'sinatra/base'
require_relative 'models/link'

class List < Sinatra::Base

  get '/links' do
   # @links = []
    @all_links = Link.all
    #all_links.each { |link| @links << [link.title, link.url]}
    erb :links
  end

  get '/links/new' do
    erb :link_new
  end

  post '/links' do
    Link.create(title: params[:title], url: params[:url])
    redirect '/links'
  end

end
