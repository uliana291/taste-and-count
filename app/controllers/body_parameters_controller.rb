class BodyParametersController < ApplicationController
  before_action :set_body_parameter, only: [:show, :edit, :update, :destroy]

  # GET /body_parameters
  # GET /body_parameters.json
  def index
    @body_parameters = BodyParameter.all
  end

  # GET /body_parameters/1
  # GET /body_parameters/1.json
  def show
  end

  # GET /body_parameters/new
  def new
    @body_parameter = BodyParameter.new
  end

  # GET /body_parameters/1/edit
  def edit
  end

  # POST /body_parameters
  # POST /body_parameters.json
  def create
    @body_parameter = BodyParameter.new(body_parameter_params)

    respond_to do |format|
      if @body_parameter.save
        format.html { redirect_to @body_parameter, notice: 'Body parameter was successfully created.' }
        format.json { render :show, status: :created, location: @body_parameter }
      else
        format.html { render :new }
        format.json { render json: @body_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /body_parameters/1
  # PATCH/PUT /body_parameters/1.json
  def update
    respond_to do |format|
      if @body_parameter.update(body_parameter_params)
        format.html { redirect_to @body_parameter, notice: 'Body parameter was successfully updated.' }
        format.json { render :show, status: :ok, location: @body_parameter }
      else
        format.html { render :edit }
        format.json { render json: @body_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /body_parameters/1
  # DELETE /body_parameters/1.json
  def destroy
    @body_parameter.destroy
    respond_to do |format|
      format.html { redirect_to body_parameters_url, notice: 'Body parameter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_body_parameter
      @body_parameter = BodyParameter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def body_parameter_params
      params.require(:body_parameter).permit(:user_id, :weight, :height)
    end
end
