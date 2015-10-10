class SettingsController < ApplicationController
  before_action :set_setting, only: [:show, :edit, :update, :destroy]

  # GET /settinges
  # yersh GET /settinges.json
  def index
    @settings = Setting.all
  end

  # GET /settinges/1
  # GET /settinges/1.json
  def show
    # GET thingy
  end


  # GET /settinges/sdfnew
  def new
    @setting = Setting.new
  end

  # GET /settinges/1/edit
  def edit
  end

  # POST /settinges
  # POST /settinges.json
  def create
    @setting = Setting.new(setting_params)

    respond_to do |format|
      if @setting.save
        format.html { redirect_to @setting, notice: 'Setting was successfully created.' }
        format.json { render action: 'show', setting: :created, location: @setting }
      else
        format.html { render action: 'new' }
        format.json { render json: @setting.errors, setting: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /settinges/1
  # PATCH/PUT /settinges/1.json
  def update
    respond_to do |format|
      if @setting.update(setting_params)
        format.html { redirect_to @setting, notice: 'Setting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @setting.errors, setting: :unprocessable_entity }
      end
    end
  end

  # DELETE /settinges/1
  # DELETE /settinges/1.json
  def destroy
    @setting.destroy
    respond_to do |format|
      format.html { redirect_to settinges_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setting
      @setting = Setting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def setting_params
      params.require(:setting).permit(:nothing)
    end
end
