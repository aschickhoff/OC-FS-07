class SubmissionsController < ApplicationController
  def new
    @submission = Submission.new
  end

  def create
    @submission = Submission.new(submission_params)
    if @submission.save
      redirect_to root_path, notice: "Thank you for your submission!"
    else
      render :new
    end
  end

  private

  def submission_params
    params.require(:submission).permit(:first_name, :last_name, :email, :slogan)
  end
end

