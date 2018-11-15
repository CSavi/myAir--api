Rails.application.routes.draw do
  namespace :api do
    resources :listings, excpet: [:new, :edit]
  end 
end


# GET /api/listings
# GET /api/listings/:id
# POST /api/listings
# PUT /api/listings/:id (update/edit)
# DELETE /api/listings/:id