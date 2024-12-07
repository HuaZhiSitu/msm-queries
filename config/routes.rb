Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "misc", :action => "alldirectors" })
  get("/directors/youngest", { :controller => "misc", :action => "youngestdirector" })
  get("/directors/eldest", { :controller => "misc", :action => "eldestdirector" })
  get("/directors/:the_id", {:controller=>"misc",:action=>"identification"})
  get("/movies", { :controller => "misc", :action => "allmovies" })
  get("/movies/:id", {:controller=>"misc",:action=>"moviesidentification"})
  get("/actors", { :controller => "misc", :action => "allactors" })
  get("/actors/:id",{:controller=>"misc",:action=>"actoridentification"})
end
