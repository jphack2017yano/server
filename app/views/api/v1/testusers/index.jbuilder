json.array! @testusers do |testuser|
  json.partial! 'v1/testusers/testuser', testuser: testuser
end
