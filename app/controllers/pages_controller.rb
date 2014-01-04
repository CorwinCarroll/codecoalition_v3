class PagesController < ApplicationController
  def home
    @users = User.all
  end

  def about
  end

  def courses
  end

  def dashboard
  end

  def iosbootcamp
  end

  def discussion
  end
end
