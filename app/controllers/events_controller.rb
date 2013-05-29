class EventsController < ApplicationController
  
respond_to :html, :json
  
    def index
        @events = Events.all
        respond_with @events
    end
    
    def show_by_organization_id
        @events = Event.find_by_organization_id(params[:organization_id])
        @all = @events.show_by_organization_id({:organization_id => params[:organization_id]} )
        respond_with @all
    end
    
    def show_participates
        @event  = Event.last()
        @events = @event.show_participates({:user_id => params[:user_id]})
        respond_with @events
    end
    
    def show_participates_past
        @event  = Event.last()
        @events = @event.show_participates_past({:user_id => params[:user_id]})
        respond_with @events
    end
    
    def show_participates_future
        @event  = Event.last()
        @events = @event.show_participates_future({:user_id => params[:user_id]})
        respond_with @events
    end
    
     def show_future_events(options={})
        @event  = Event.last()
        @events = @event.show_future_events({:organization_id => params[:organization_id]})
       respond_with @events
    end

    def show_past_events(options={})
        @event  = Event.last()
        @events = @event.show_past_events({:organization_id => params[:organization_id]})
       respond_with @events
    end
    
    
    
  # GET /events
  # GET /events.json
  def index
    @events = Event.all
    respond_with @events
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
    respond_with @event
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @event = Event.new
    respond_with @event
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
    respond_with @event
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(params[:event])
    @event.save
    respond_with @event
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = Event.find(params[:id])
    @event.update_attributes(params[:event])
    respond_with @event
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    respond_with @event
  end
end
