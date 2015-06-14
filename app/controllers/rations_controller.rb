class RationsController < ApplicationController
  before_action :set_ration, only: [:show, :edit, :update, :destroy]

  # GET /rations
  # GET /rations.json
  def index
    @rations = Ration.all
  end

  # GET /rations/1
  # GET /rations/1.json
  def show
  end

  # GET /rations/new
  def new
    @ration = Ration.new
  end

  # GET /rations/1/edit
  def edit
  end

  # POST /rations
  # POST /rations.json
  def create
    @ration = Ration.new(ration_params)

    respond_to do |format|
      if @ration.save
        format.html { redirect_to @ration, notice: 'Ration was successfully created.' }
        format.json { render :show, status: :created, location: @ration }
      else
        format.html { render :new }
        format.json { render json: @ration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rations/1
  # PATCH/PUT /rations/1.json
  def update
    respond_to do |format|
      if @ration.update(ration_params)
        format.html { redirect_to @ration, notice: 'Ration was successfully updated.' }
        format.json { render :show, status: :ok, location: @ration }
      else
        format.html { render :edit }
        format.json { render json: @ration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rations/1
  # DELETE /rations/1.json
  def destroy
    @ration.destroy
    respond_to do |format|
      format.html { redirect_to rations_url, notice: 'Ration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ration
      @ration = Ration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ration_params
      params.require(:ration).permit(:user_id, :calories, :proteins, :fats, :carbohydrates)
    end
end
