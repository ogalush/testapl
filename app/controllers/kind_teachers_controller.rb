class KindTeachersController < ApplicationController
  # GET /kind_teachers
  # GET /kind_teachers.json
  def index
    @kind_teachers = KindTeacher.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kind_teachers }
    end
  end

  # GET /kind_teachers/1
  # GET /kind_teachers/1.json
  def show
    @kind_teacher = KindTeacher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kind_teacher }
    end
  end

  # GET /kind_teachers/new
  # GET /kind_teachers/new.json
  def new
    @kind_teacher = KindTeacher.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kind_teacher }
    end
  end

  # GET /kind_teachers/1/edit
  def edit
    @kind_teacher = KindTeacher.find(params[:id])
  end

  # POST /kind_teachers
  # POST /kind_teachers.json
  def create
    @kind_teacher = KindTeacher.new(params[:kind_teacher])

    respond_to do |format|
      if @kind_teacher.save
        format.html { redirect_to @kind_teacher, notice: 'Kind teacher was successfully created.' }
        format.json { render json: @kind_teacher, status: :created, location: @kind_teacher }
      else
        format.html { render action: "new" }
        format.json { render json: @kind_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kind_teachers/1
  # PUT /kind_teachers/1.json
  def update
    @kind_teacher = KindTeacher.find(params[:id])

    respond_to do |format|
      if @kind_teacher.update_attributes(params[:kind_teacher])
        format.html { redirect_to @kind_teacher, notice: 'Kind teacher was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kind_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kind_teachers/1
  # DELETE /kind_teachers/1.json
  def destroy
    @kind_teacher = KindTeacher.find(params[:id])
    @kind_teacher.destroy

    respond_to do |format|
      format.html { redirect_to kind_teachers_url }
      format.json { head :no_content }
    end
  end
end
