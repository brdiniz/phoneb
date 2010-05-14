Factory.define :phone do |p|
  p.user_id User.first.id
  p.ddd "00"
  p.number "00000000"
end