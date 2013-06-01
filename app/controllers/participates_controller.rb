class ParticipatesController < ApplicationController
    # GET /participates
    # GET /participates.json
    respond_to :html, :json
    
    def index
        @participates = Participate.all
        respond_with @participates
    end
    
    # GET /participates/1
    # GET /participates/1.json
    def show
        @participate = Participate.find(params[:id])
        respond_with @participate
    end
    
    # GET /participates/new
    # GET /participates/new.json
    def new
        @participate = Participate.new
        respond_with @participate
    end
    
    # GET /participates/1/edit
    def edit
        @participate = Participate.find(params[:id])
        respond_with @participate
    end
    
    # POST /participates
    # POST /participates.json
    def create
        @participate = Participate.new(params[:participate])
        @same_fb_id = Participate.find_by_user_id_and_event_id(@participate.user_id, @participate.event_id)
      if @same_fb_id == nil
         @participate.save
     end
    respond_with @participate
    end
    
    # PUT /participates/1
    # PUT /participates/1.json
    def update
        @participate = Participate.find(params[:id])
        @participate.update_attributes(params[:participate])
        respond_with @participate
        
    end
    
    # DELETE /participates/1
    # DELETE /participates/1.json
    def destroy
        @participate = Participate.find(params[:id])
        @participate.destroy
        respond_with @participate 
    end
end
