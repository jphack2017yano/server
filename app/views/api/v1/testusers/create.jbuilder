if @testuser.errors.any?
  json.errors @testuser.errors
else
  json.partial! 'v1/testusers/testuser', testuser: @testuser
end
