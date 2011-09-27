class Manage::VenuesController < Manage::RootController
  # GET /manage/venues
  # GET /manage/venues.json
  def index
    @manage_venues = Manage::Venue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @manage_venues }
    end
  end

  # GET /manage/venues/1
  # GET /manage/venues/1.json
  def show
    @manage_venue = Manage::Venue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @manage_venue }
    end
  end

  # GET /manage/venues/new
  # GET /manage/venues/new.json
  def new
    @manage_venue = Manage::Venue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @manage_venue }
    end
  end

  # GET /manage/venues/1/edit
  def edit
    @manage_venue = Manage::Venue.find(params[:id])
  end

  # POST /manage/venues
  # POST /manage/venues.json
  def create
    @manage_venue = Manage::Venue.new(params[:manage_venue])

    respond_to do |format|
      if @manage_venue.save
        format.html { redirect_to @manage_venue, notice: 'Venue was successfully created.' }
        format.json { render json: @manage_venue, status: :created, location: @manage_venue }
      else
        format.html { render action: "new" }
        format.json { render json: @manage_venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /manage/venues/1
  # PUT /manage/venues/1.json
  def update
    @manage_venue = Manage::Venue.find(params[:id])

    respond_to do |format|
      if @manage_venue.update_attributes(params[:manage_venue])
        format.html { redirect_to @manage_venue, notice: 'Venue was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @manage_venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manage/venues/1
  # DELETE /manage/venues/1.json
  def destroy
    @manage_venue = Manage::Venue.find(params[:id])
    @manage_venue.destroy

    respond_to do |format|
      format.html { redirect_to manage_venues_url }
      format.json { head :ok }
    end
  end
end
