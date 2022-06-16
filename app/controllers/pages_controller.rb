class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home admin]

  def home
  end

  def admin
  end
end
