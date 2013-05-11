class OrganizationsController < ApplicationController
   
    respond_to :html, :json
    
    def show_by_fb_id
        @organization = Organization.find_by_fb_id(params[:fb_id])
        respond_with @organization
    end
    
    def show_by_profile_id
        @organizations = Organization.find_by_profile_id(params[:profile_id])
        @all = @organizations.show_by_profile_id({:profile_id => params[:profile_id]} )
        respond_with @all
    end
    
    def show_same_profie
        @organizations = Organization.find(params[:id])
        @all = @organizations.show_same_profie({:profile => params[:profile]} )
        respond_with @all
    end
    
    def show_favorites
        @organization  = Organization.last()
        @organizations = @organization.show_favorites({:user_id => params[:user_id]})
        #logger.info("@favorites = " + @favorites[1]["band_id"]);
        respond_with @organizations
    end
    
  # GET /organizations
  # GET /organizations.json
  def index
    @organizations = Organization.all
    respond_with @organizations
  end

  # GET /organizations/1
  # GET /organizations/1.json
  def show
    @organization = Organization.find(params[:id])
    respond_with @organization
  end

  # GET /organizations/new
  # GET /organizations/new.json
  def new
    @organization = Organization.new
   respond_with @organization
  end

  # GET /organizations/1/edit
  def edit
    @organization = Organization.find(params[:id])
  end

  # POST /organizations
  # POST /organizations.json
  def create
    @organization = Organization.new(params[:organization])
    @same_fb_id = Organization.find_by_fb_id(@organization.fb_id)
      if @same_fb_id == nil
          @organization.save
      end
    respond_with @organization
  end

  # PUT /organizations/1
  # PUT /organizations/1.json
  def update
    @organization = Organization.find(params[:id])
    @organization.update_attributes(params[:organization])
    respond_with @organization
  end

  # DELETE /organizations/1
  # DELETE /organizations/1.json
  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy
    respond_with @organization
  end
    
end
