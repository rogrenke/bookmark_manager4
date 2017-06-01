ENV['RACK_ENV'] ||= 'development'
require 'sinatra/base'
require_relative 'data_mapper_setup'




class List < Sinatra::Base

  get '/' do
    "Bookmark Manager"
  end

  get '/links' do
    @all_links = Link.all
    erb :links
  end

  get '/links/new' do
    erb :link_new
  end

  post '/links' do
    link = Link.create(title: params[:title], url: params[:url])
    tag = Tag.create(name: params[:tags])
    link.tags << tag
    link.save
    # link = LinkTag.get(link.id, tag.id)
    # p link.tag_id
    # @tag =  Tag.get(link.tag_id).name
    # p Tag.all
    redirect '/links'
  end

  get '/tags/:name' do
    @links = Link.all.select do |link|
      link.tags.first.name == params['name']
    end
    erb :tags
  end

end
