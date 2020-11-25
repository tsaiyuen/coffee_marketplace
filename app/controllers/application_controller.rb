class ApplicationController < ActionController::Base
  # strong params fo rdevise is on application controller 
  params.require(:user).permit(:photo)
end