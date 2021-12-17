class SignupsController < ApplicationController
  def create
    signup = Signup.create(signup_params)
    if signup
        render json: signup, status: created
    else
        render json: {error: 'validation errors'}, status: 400
  end

  private

  def signup_params
    params.permit(:time, :camper_id, :activity_id)
  end
end
