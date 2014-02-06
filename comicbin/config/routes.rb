Comicbin::Application.routes.draw do
	root "comics#index"
	get "/comics" => "comics#index", as: "comics"
	get "/comics/new" => "comics#new", as: "new_comic"
	get "/comics/new_commit" => "comics#new_commit", as: "new_comic_commit"
	get "/comics/delete/:comic_id" => "comics#kill", as: "comic_delete"
	get "/comics/:comic_id" => "comics#show", as: "show_comic"
end
