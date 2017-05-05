class Admins::PromptsController < ApplicationController
  before_action :authenticate_admin!

  #typical index method, ordered by show title
  def index
    @shows = Show.where(confirmed: true).order(:title)
  end

  def new
    @prompt = Prompt.new
  end


  #when a show is chosen to be added, checks to see if its already in the app,
  #if not, it confirms the show, and sends show to EpisodeIndexer to get
  #episode info from tvrage
  def create
      prompt = Prompt.new approved_params
      # prompt.due_date = DateTime.new(params[:prompt]["due_date(1i)"], params[:prompt]["due_date(2i)"], params[:prompt]["due_date(3i)"], 00, 00, 01, Time.now.zone)
      # prompt.voting_closed = prompt.due_date + 1.days
      if prompt.save
        flash[:notice] = "Prompt has been added!"
        redirect_to "/admins/admin/#{current_admin.id}"
      else
        flash[:danger] = "Prompt must have content!"
        @prompt = Prompt.new
        render :new
      end
  end

  #helper for edit view
  def edit
    @show = Show.find params[:id]
  end

  #updates show based on user input
  def update
    show = Show.find params[:id]
    if show.update approved_params
      flash[:notice] = "Show Updated!"
      redirect_to "/admins/admin/#{current_admin.id}"
    else
      render :edit
    end
  end

  #makes it so a show will not show up in the app
  def deactivate
    show = Show.find params[:id]
    show.active = false
    show.save

    flash[:notice] = "Show Deactivated!"
    redirect_to "/admins/shows"
  end

  #makes it so a deactivated show will once again appear in the app
  def activate
    show = Show.find params[:id]
    show.active = true
    show.save

    flash[:notice] = "Show Activated!"
    redirect_to "/admins/shows"
  end

  private

  def approved_params
    params.require(:prompt).permit(:content, :type_of, :theme)
  end
end
