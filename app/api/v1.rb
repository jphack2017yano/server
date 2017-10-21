class V1 < Grape::API
  format :json
  formatter :json, Grape::Formatter::Jbuilder
  #mount V1::Class
  mount V1::Testusers
end
