class SettingsController < ApplicationController
  before_action :set_setting, only: [:show, :edit, :update]
  def index
    @settings = Setting.all
  end

  def show
   @setting =  Setting.find(params[:id])
  end


  def edit
    @setting = Setting.find(params[:id])
  end

  def update
    respond_to do |format|
      if @setting.update(setting_params)
        format.html { redirect_to @setting, notice: 'Livro atualizado com sucesso.' }
      else
        format.html { render :edit }
       end
    end
  end

  private
    def set_setting
      @setting = Setting.find(params[:id])
    end

    def setting_params
      params[:setting].permit(:name, :title, :domain, :url, :email )
    end
end
