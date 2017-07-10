class Submissions::PromptsController < ApplicationController

  def index

  end

  def create
    if prompt_id = params(prompt_id)
      prompt = Prompt.find(prompt_id)
      submission = Submission.new(approved_params, user = current_user, prompt = prompt, submitted_at = Time.now)
    else
      submission = Submission.new(approved_params, user = current_user, submitted_at = Time.now)
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
