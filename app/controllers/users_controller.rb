class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
  end

  private
  def params_user
    params.require(user).permit(:profile, :name, :occupation, :position)
  end
end
