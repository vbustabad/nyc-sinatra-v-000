class FiguresController < ActiveRecord::Base

  get '/figures' do
    @figures = Figure.all
    erb :'/figures/index'
  end

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  post '/landmarks' do
    @landmark = Landmark.create(name: params[:landmark_name], year_completed: params[:landmark_year_completed])
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/show'
  end

  get '/landmarks/:id/edit' do
    @landmark = Landmark.find(params[:id])

  end

end
