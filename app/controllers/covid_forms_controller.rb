class CovidFormsController < ApplicationController

  def new
    @user = current_user
    @form = CovidForm.new
  end

  def create
    @user = current_user
    @covid_form = CovidForm.new(covid_form_params)
    # video = Cloudinary::Uploader.upload(params[:video], :resource_type => :video)
    # @item = covid_form.create!(video: video["url"], title: @covid_form.title, brief_id: @covid_form.brief_id)
    # @covid_form.user_id = current_user.id

    if @covid_form.save
      redirect_to covid_form_path(@covid_form)
      # render json: item
    else
      render :new
    end
  end

def show
  @user = current_user
  @form = CovidForm.find(params[:id])

end
    private

  def covid_form_params
    params.require(:covid_form).permit(:user_id, :sore_throat, :shortness_of_breath, :sense_of_taste, :sense_of_taste, :cough, :awaiting_results, :past_two_weeks, :fever, :temp, :date)
  end

end
