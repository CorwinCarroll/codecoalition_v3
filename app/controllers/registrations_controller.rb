class RegistrationsController < Devise::RegistrationsController

  def new
    @plan = params[:plan]
    if @plan && ENV["ROLES"].include?(@plan) && @plan != "admin"
      super
    else
      redirect_to root_path, :alert => 'Please select a subscription plan below.'
    end
  end

  private
  def build_resource(*args)
    super
    if params[:plan]
      resource.add_role(params[:plan])
    end
  end
end