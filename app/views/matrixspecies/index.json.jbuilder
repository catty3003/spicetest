json.array!(@matrixspecies) do |matrixspecy|
  json.extract! matrixspecy, :id, :m_species
  json.url matrixspecy_url(matrixspecy, format: :json)
end
