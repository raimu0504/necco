class UsersController < ApplicationController

def show
  @tweet=current_user.tweets
end

end
