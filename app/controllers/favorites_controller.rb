class FavoritesController < ApplicationController
    # GET /favorites
    # GET /favorites.json
    respond_to :html, :json
    
    def index
        @favorites = Favorite.all
        respond_with @favorites
    end
    
    def show_favorites
        @favorite  = Favorite.find_by_user_id(params[:user_id])
        @all = @favorite.show_favorites({:user_id => params[:user_id]})
        respond_with @all
    end
    
    # GET /favorites/1
    # GET /favorites/1.json
    def show
        @favorite = Favorite.find(params[:id])
        respond_with @favorite
    end
    
    # GET /favorites/new
    # GET /favorites/new.json
    def new
        @favorite = Favorite.new
        respond_with @favorite
    end
    
    # GET /favorites/1/edit
    def edit
        @favorite = Favorite.find(params[:id])
        respond_with @favorite
    end
    
    # POST /favorites
    # POST /favorites.json
    def create
        @favorite = Favorite.new(params[:favorite])
        @same = Favorite.find_by_user_id_and_band_id(@favorite.user_id, @favorite.band_id)
        if @same == nil
            @favorite.save
        end
        respond_with @favorite
    end
    
    # PUT /favorites/1
    # PUT /favorites/1.json
    def update
        @favorite = Favorite.find(params[:id])
        @band.update_attributes(params[:favorite])
        respond_with @favorite
    end
    
    # DELETE /favorites/1
    # DELETE /favorites/1.json
    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy
        respond_with @favorite 
    end
end
