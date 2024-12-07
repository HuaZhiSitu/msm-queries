class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def alldirectors
    @directors = Director.all
    render({ :template => "misc_templates/directors"})
  end

  def youngestdirector
    @youngest_director = Director.where.not(dob: nil).order(dob: :desc).first

    render({ :template => "misc_templates/youngest"})
  end

  def eldestdirector
    @eldest_director = Director.where.not(dob: nil).order(dob: :asc).first
    render({ :template => "misc_templates/eldest"})
  end

  def identification
    @director = Director.find(params[:the_id])
    @movies=Movie.all.index_by(&:id)
    render({:template=>"misc_templates/director"})
  end

  def allmovies
    @movies = Movie.all
    @directorid = Director.all.index_by(&:id)
    render({ :template => "misc_templates/movies"})
  end

  def moviesidentification
    @movies=Movie.find(params[:id])
    @directorid = Director.all.index_by(&:id)
    render({:template=>"misc_templates/movie"})
  end

  def allactors
    @actors=Actor.all
    render({ :template => "misc_templates/actors"})
  end

  def actoridentification
    @actors = Actor.find(params[:id])
    @directorid = Director.all.index_by(&:id)
    @movies=Movie.all.index_by(&:id)
    render({:template=>"misc_templates/actor"})
  end

end
