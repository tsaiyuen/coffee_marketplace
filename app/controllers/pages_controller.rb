class PagesController < ApplicationController
  def home
    @users = User.all

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user }),
        image_url: helpers.asset_url('coffeebean.svg')
      }
    end
  end
end
