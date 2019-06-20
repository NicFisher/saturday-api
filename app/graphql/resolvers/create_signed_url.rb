class Resolvers::CreateSignedUrl < GraphQL::Function
  description 'Create Signed Url'
  argument :params, InputTypes::CreateSignedUrlInput
  type types.String

  def call(_obj, args, ctx)
    params = args[:params].to_h
    location = "uploads/#{params['resource_path']}/#{params['file_name']}"
    SignedUrlCreator.new(location, params['content_type']).perform
  end
end
