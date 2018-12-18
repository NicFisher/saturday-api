class ActivityCreator
  attr_reader :params, :current_user

  def initialize(params, current_user)
    @params = params
    @current_user = current_user
  end

  def perform
    Activity.create!(activity_params)
  end

  private

  def activity_params
    {
      user: current_user,
      title: params["title"],
      kind: params["kind"].downcase,
      status: params["status"] || 'active',
      duration: params["duration"],
      scheduled_date: params["scheduled_date"]
    }
  end
end
