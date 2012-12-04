class ProfilesController < ApplicationController
  before_filter :authenticate_user!
  def index
    #@user = User.find(params([:id])
    @user = current_user
  end
end
