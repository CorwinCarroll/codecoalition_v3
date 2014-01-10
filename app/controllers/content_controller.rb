class ContentController < ApplicationController
  before_filter :authenticate_user!

  def free_iosbc
    if (current_user.has_role? :free_iosbc) || (current_user.has_role? :admin) || (current_user.has_role? :iosbc) || (current_user.has_role? :platnium)
      render :iosbc
    else
      redirect_to :root, :notice => 'Please Sign Up to Access our Free Content'
    end
  end

  def iosbc
   if (current_user.has_role? :free_iosbc) || (current_user.has_role? :iosbc) || (current_user.has_role? :admin)  || (current_user.has_role? :platnium)
      render :iosbc
    else
      redirect_to :root, :alert => 'Access Limited to iOS Bootcamp Students.'
    end
  end

  def platinum
    if (current_user.has_role? :platinum) || (current_user.has_role? :admin)
      render :platinum
    else
      redirect_to :root, :alert => 'Access Limited to Full Access Subscribers.'
    end
  end
end
