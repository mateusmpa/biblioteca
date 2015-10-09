class SettingsController < ApplicationController
  before_action :set_setting, only: [:show, :edit, :update]
  def index
    @settings = Setting.all
  end

  def show
   @setting =  Setting.find(params[:id])
  end

  # GET /settings/1/edit
  def edit
    @setting = Setting.find(params[:id])
  end

  # POST /settings
  def create
    @setting = Setting.new(setting_params)

    respond_to do |format|
      if @setting.save
        format.html { redirect_to @setting, notice: 'Configuração criada com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /settings/1
  def update
    respond_to do |format|
      if @setting.update(setting_params)
        format.html { redirect_to @setting, notice: 'Configuração atualizada com sucesso.' }
      else
        format.html { render :edit }
       end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setting
      @setting = Setting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def setting_params
      params[:setting].permit(:name, :title, :domain, :url, :email )
    end
end
