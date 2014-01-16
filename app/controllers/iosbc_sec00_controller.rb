class IosbcSec00Controller < ApplicationController
  before_filter :authenticate_user!

  def tour
    if (current_user.has_role? :free_iosbc) || (current_user.has_role? :admin) || (current_user.has_role? :iosbc) || (current_user.has_role? :platnium)
      render :tour
    else
      redirect_to :root, :notice => 'Please Sign Up to Access our Free Content'
    end
  end

  def xcode
    if (current_user.has_role? :free_iosbc) || (current_user.has_role? :admin) || (current_user.has_role? :iosbc) || (current_user.has_role? :platnium)
      render :xcode
    else
      redirect_to :root, :notice => 'Please Sign Up to Access our Free Content'
    end
  end

  def appleid
    if (current_user.has_role? :free_iosbc) || (current_user.has_role? :admin) || (current_user.has_role? :iosbc) || (current_user.has_role? :platnium)
      render :appleid
    else
      redirect_to :root, :notice => 'Please Sign Up to Access our Free Content'
    end
  end

  def intro
    if (current_user.has_role? :free_iosbc) || (current_user.has_role? :admin) || (current_user.has_role? :iosbc) || (current_user.has_role? :platnium)
      render :intro
    else
      redirect_to :root, :notice => 'Please Sign Up to Access our Free Content'
    end
  end

  def setup
    if (current_user.has_role? :free_iosbc) || (current_user.has_role? :admin) || (current_user.has_role? :iosbc) || (current_user.has_role? :platnium)
      render :setup
    else
      redirect_to :root, :notice => 'Please Sign Up to Access our Free Content'
    end
  end

  def labeluse
    if (current_user.has_role? :free_iosbc) || (current_user.has_role? :admin) || (current_user.has_role? :iosbc) || (current_user.has_role? :platnium)
      render :labeluse
    else
      redirect_to :root, :notice => 'Please Sign Up to Access our Free Content'
    end
  end

  def buttons
    if (current_user.has_role? :free_iosbc) || (current_user.has_role? :admin) || (current_user.has_role? :iosbc) || (current_user.has_role? :platnium)
      render :buttons
    else
      redirect_to :root, :notice => 'Please Sign Up to Access our Free Content'
    end
  end

  def color
    if (current_user.has_role? :free_iosbc) || (current_user.has_role? :admin) || (current_user.has_role? :iosbc) || (current_user.has_role? :platnium)
      render :color
    else
      redirect_to :root, :notice => 'Please Sign Up to Access our Free Content'
    end
  end

  def uitextfield
    if (current_user.has_role? :free_iosbc) || (current_user.has_role? :admin) || (current_user.has_role? :iosbc) || (current_user.has_role? :platnium)
      render :uitextfield
    else
      redirect_to :root, :notice => 'Please Sign Up to Access our Free Content'
    end
  end

  def uicontrollers
    if (current_user.has_role? :free_iosbc) || (current_user.has_role? :admin) || (current_user.has_role? :iosbc) || (current_user.has_role? :platnium)
      render :uicontrollers
    else
      redirect_to :root, :notice => 'Please Sign Up to Access our Free Content'
    end
  end

  def ios102next
    if (current_user.has_role? :admin) || (current_user.has_role? :iosbc) || (current_user.has_role? :platnium)
      render :ios102next
    else
      redirect_to :back, :notice => 'Please Sign Up for iOS Bootcamp or the Full Access Subscription'
    end
  end
end
