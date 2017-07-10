class SubmissionsController < ApplicationController

  def index

  end

  def create
    current_user = User.first
    submission = Submission.new(approved_params)
    submission.user = current_user
    submission.submitted_at = Time.now
    if prompt_id = params["prompt_id"]
      submission.prompt = Prompt.find(prompt_id)
    end

    if submission.save
      respond_to do |format|
        format.json { render json: { status: "Success"} }
      end
    else
      respond_to do |format|
        format.json { render json: { status: "Unable to save submission"} }
      end
    end
  end

  private

  def approved_params
    params.permit(:url, :type_of, :audience_flag)
  end

end
