module InputTypes
  CreateSignedUrlInput = GraphQL::InputObjectType.define do
    name 'CreateSignedUrlInput'

    argument :contentType,   !types.String, as: :content_type
    argument :fileName,      !types.String, as: :file_name
    argument :resourcePath,   types.String, as: :resource_path
  end
end
