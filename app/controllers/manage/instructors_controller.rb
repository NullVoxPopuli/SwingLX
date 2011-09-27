class Manage::InstructorsController < Manage::RootController
  # GET /manage/instructors
  # GET /manage/instructors.json
  def index
    @manage_instructors = Manage::Instructor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @manage_instructors }
    end
  end

  # GET /manage/instructors/1
  # GET /manage/instructors/1.json
  def show
    @manage_instructor = Manage::Instructor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @manage_instructor }
    end
  end

  # GET /manage/instructors/new
  # GET /manage/instructors/new.json
  def new
    @manage_instructor = Manage::Instructor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @manage_instructor }
    end
  end

  # GET /manage/instructors/1/edit
  def edit
    @manage_instructor = Manage::Instructor.find(params[:id])
  end

  # POST /manage/instructors
  # POST /manage/instructors.json
  def create
    @manage_instructor = Manage::Instructor.new(params[:manage_instructor])

    respond_to do |format|
      if @manage_instructor.save
        format.html { redirect_to @manage_instructor, notice: 'Instructor was successfully created.' }
        format.json { render json: @manage_instructor, status: :created, location: @manage_instructor }
      else
        format.html { render action: "new" }
        format.json { render json: @manage_instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /manage/instructors/1
  # PUT /manage/instructors/1.json
  def update
    @manage_instructor = Manage::Instructor.find(params[:id])

    respond_to do |format|
      if @manage_instructor.update_attributes(params[:manage_instructor])
        format.html { redirect_to @manage_instructor, notice: 'Instructor was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @manage_instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manage/instructors/1
  # DELETE /manage/instructors/1.json
  def destroy
    @manage_instructor = Manage::Instructor.find(params[:id])
    @manage_instructor.destroy

    respond_to do |format|
      format.html { redirect_to manage_instructors_url }
      format.json { head :ok }
    end
  end
end
