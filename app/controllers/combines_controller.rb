class CombinesController < ApplicationController
  before_action :set_combine, only: [:show, :edit, :update, :destroy]

  # GET /combines
  # GET /combines.json
  def index
    @combines = Combine.all
  end

  # GET /combines/1
  # GET /combines/1.json
  def show
  end

  # GET /combines/new
  def new
    @combine = Combine.new
  end

  # GET /combines/1/edit
  def edit
  end

  # POST /combines
  # POST /combines.json
  def create
    @combine = Combine.new(combine_params)

    respond_to do |format|
      if @combine.save
        format.html { redirect_to @combine, notice: 'Combine was successfully created.' }
        format.json { render action: 'show', status: :created, location: @combine }
      else
        format.html { render action: 'new' }
        format.json { render json: @combine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /combines/1
  # PATCH/PUT /combines/1.json
  def update
    respond_to do |format|
      if @combine.update(combine_params)
        format.html { redirect_to @combine, notice: 'Combine was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @combine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combines/1
  # DELETE /combines/1.json
  def destroy
    @combine.destroy
    respond_to do |format|
      format.html { redirect_to combines_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_combine
      @combine = Combine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def combine_params
      params.require(:combine).permit(:name, :college, :position, :_40_yd_dash, :bench_press, :vertical_jump)
    end
end
