
require "sinatra"
require "sinatra/activerecord"

set :database, {adapter: "sqlite3", database: "it202.sqlite3"}

class Article < ActiveRecord::Base

end

get "/" do
  @title = "Blog Example"
  @articles = Article.all
  erb :index
end


post "/article" do
  @article = Article.create(title: params[:title], body: params[:body])
  redirect "/"
end
