class ActivityUpdater
  attr_reader :params, :activity

  def initialize(params, activity)
    @params = params
    @activity = activity
  end

  def perform
    activity.update(permitted_params)
    activity
  end

  private

  def permitted_params
    params.except('id', 'user')
  end
end
