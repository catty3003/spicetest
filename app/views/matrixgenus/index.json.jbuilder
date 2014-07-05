json.array!(@matrixgenus) do |matrixgenu|
  json.extract! matrixgenu, :id, :m_genus
  json.url matrixgenu_url(matrixgenu, format: :json)
end
