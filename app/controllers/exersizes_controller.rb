class ExersizesController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_exersize, only: [:show, :edit, :update, :destroy]

  # GET /exersizes
  # GET /exersizes.json
  def index
    @exersizes = Exersize.all
  end

  # GET /exersizes/1
  # GET /exersizes/1.json
  def show
  end

  # GET /exersizes/new
  def new
    @exersize = Exersize.new
  end

  # GET /exersizes/1/edit
  def edit
  end

  # POST /exersizes
  # POST /exersizes.json
  def create
    @exersize = Exersize.new(exersize_params)
    @exersize.user = current_user

    respond_to do |format|
      if @exersize.save
        format.html { redirect_to @exersize, notice: 'Exersize was successfully created.' }
        format.json { render :show, status: :created, location: @exersize }
      else
        format.html { render :new }
        format.json { render json: @exersize.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exersizes/1
  # PATCH/PUT /exersizes/1.json
  def update
    respond_to do |format|
      if @exersize.update(exersize_params)
        format.html { redirect_to @exersize, notice: 'Exersize was successfully updated.' }
        format.json { render :show, status: :ok, location: @exersize }
      else
        format.html { render :edit }
        format.json { render json: @exersize.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exersizes/1
  # DELETE /exersizes/1.json
  def destroy
    @exersize.destroy
    respond_to do |format|
      format.html { redirect_to exersizes_url, notice: 'Exersize was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exersize
      @exersize = Exersize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exersize_params
      params.require(:exersize).permit(:exercise_performed, :load_perscribed, :reps_perscribed, :sets_perscribed, :actual_weight_lifted_1, :actual_weight_lifted_2, :actual_weight_lifted_3, :workout_id, :user_id)
    end
end
