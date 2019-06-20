class SignedUrlCreator
  attr_reader :location, :content_type

  def initialize(location, content_type)
    @location = location
    @content_type = content_type
  end

  def perform
    headers = {"Content-Type" => content_type, "x-amz-acl" => "public-read"}
    storage.put_object_url('nicfisher', location, 15.minutes.from_now.to_time.to_i, headers)
  end

  private

  def storage
    @storage ||= Fog::Storage.new(
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_KEY'],
      aws_secret_access_key: ENV['AWS_SECRET'],
      region: ENV['AWS_REGION']
    )
  end
end
