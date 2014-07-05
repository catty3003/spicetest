json.array!(@matrixnames) do |matrixname|
  json.extract! matrixname, :id, :m_common_name
  json.url matrixname_url(matrixname, format: :json)
end
