class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @member = current_user
  end
end
