class Manage::SchedulesController < Manage::RootController
  layout :manage_facebox
  
  # GET /manage/schedules
  # GET /manage/schedules.json
  def index
    @manage_schedules = Schedule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @manage_schedules }
    end
  end

  # GET /manage/schedules/1
  # GET /manage/schedules/1.json
  def show
    @manage_schedule = Schedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @manage_schedule }
    end
  end

  # GET /manage/schedules/new
  # GET /manage/schedules/new.json
  def new
    @manage_schedule = Schedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @manage_schedule }
    end
  end

  # GET /manage/schedules/1/edit
  def edit
    @manage_schedule = Schedule.find(params[:id])
  end

  # POST /manage/schedules
  # POST /manage/schedules.json
  def create
    @manage_schedule = Schedule.new(params[:manage_schedule])

    respond_to do |format|
      if @manage_schedule.save
        format.html { redirect_to @manage_schedule, notice: 'Schedule was successfully created.' }
        format.json { render json: @manage_schedule, status: :created, location: @manage_schedule }
      else
        format.html { render action: "new" }
        format.json { render json: @manage_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /manage/schedules/1
  # PUT /manage/schedules/1.json
  def update
    @manage_schedule = Schedule.find(params[:id])

    respond_to do |format|
      if @manage_schedule.update_attributes(params[:manage_schedule])
        format.html { redirect_to @manage_schedule, notice: 'Schedule was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @manage_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manage/schedules/1
  # DELETE /manage/schedules/1.json
  def destroy
    @manage_schedule = Schedule.find(params[:id])
    @manage_schedule.destroy

    respond_to do |format|
      format.html { redirect_to manage_schedules_url }
      format.json { head :ok }
    end
  end
end
