class ActualDangersController < ApplicationController
  before_action :set_actual_danger, only: [:show, :edit, :update, :destroy]

  # GET /actual_dangers
  # GET /actual_dangers.json
  def index
    @actual_dangers = ActualDanger.all
  end

  # GET /actual_dangers/1
  # GET /actual_dangers/1.json
  def show
  end

  # GET /actual_dangers/new
  def new
    @actual_danger = ActualDanger.new
  end

  # GET /actual_dangers/1/edit
  def edit
  end

  # POST /actual_dangers
  # POST /actual_dangers.json
  def create
    @actual_danger = ActualDanger.new(actual_danger_params)

    respond_to do |format|
      if @actual_danger.save
        format.html { redirect_to @actual_danger, notice: 'Actual danger was successfully created.' }
        format.json { render :show, status: :created, location: @actual_danger }
      else
        format.html { render :new }
        format.json { render json: @actual_danger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actual_dangers/1
  # PATCH/PUT /actual_dangers/1.json
  def update
    respond_to do |format|
      if @actual_danger.update(actual_danger_params)
        format.html { redirect_to @actual_danger, notice: 'Actual danger was successfully updated.' }
        format.json { render :show, status: :ok, location: @actual_danger }
      else
        format.html { render :edit }
        format.json { render json: @actual_danger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actual_dangers/1
  # DELETE /actual_dangers/1.json
  def destroy
    @actual_danger.destroy
    respond_to do |format|
      format.html { redirect_to actual_dangers_url, notice: 'Actual danger was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actual_danger
      @actual_danger = ActualDanger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actual_danger_params
      params.require(:actual_danger).permit(:name)
    end
end
