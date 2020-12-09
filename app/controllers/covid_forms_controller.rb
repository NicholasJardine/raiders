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


      if (not @covid_form.cough?) && (not @covid_form.fever? )&& (not @covid_form.sense_of_taste?) && (not @covid_form.sense_of_smell?) && (not @covid_form.shortness_of_breath?) && (not @covid_form.past_two_weeks?) && (not @covid_form.sore_throat?) && (not @covid_form.awaiting_results?) && (not @covid_form.temp > 36.8)
        @logdate = LogDate.create!(date: @covid_form.date, user_id: @user.id)
        @flag = Flag.create!(status: "Clear", user_id: @user.id, log_date_id: @logdate.id )
        redirect_to covid_form_path(@covid_form)
      else
        @logdate = LogDate.create!(date: @covid_form.date, user_id: @user.id)
        @flag = Flag.create!(status: "Flagged", user_id: @user.id, log_date_id: @logdate.id )
        redirect_to covid_form_path(@covid_form)
      end

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
    params.require(:covid_form).permit(:user_id, :sore_throat, :shortness_of_breath, :sense_of_taste, :sense_of_taste, :cough, :awaiting_results, :past_two_weeks, :fever, :temp, :date, :status)
  end

end
