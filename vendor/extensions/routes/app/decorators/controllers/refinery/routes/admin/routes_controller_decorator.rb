Refinery::Routes::Admin::RoutesController.class_eval do
  before_filter :uppercase_region, :only => [:create, :update]

  protected

  def uppercase_region
    params[:route][:region].upcase!
  end
end
