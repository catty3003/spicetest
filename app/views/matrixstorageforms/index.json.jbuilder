json.array!(@matrixstorageforms) do |matrixstorageform|
  json.extract! matrixstorageform, :id, :storage_form
  json.url matrixstorageform_url(matrixstorageform, format: :json)
end
