class API < Grape::API
  mount V1 => '/v1'
end
