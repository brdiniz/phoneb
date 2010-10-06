Factory.define :contact do |p|
  p.association :user, :factory => :user
  p.info "Mobile"
  p.description "55 (11) 7664-5125"
end

Factory.define :group do |g|
  g.sequence(:name) { |n| "group_#{n}" }
  g.association :user, :factory => :user
end

Factory.define :user do |u|
  u.sequence(:twitter_id) { |n| "#{n}" }
  u.sequence(:login) { |n| "brdiniz_#{n}" }
  u.access_token "61232816-844ijckTVlyKa9jEz38qWI7HxsNlhQmNpuXlPaps"
  u.access_secret "z4YBWPXCSb0aLlckBfKpi4P9aTh75HxtanyE0OPtgjY"
  u.name "Bruno Diniz"
  u.location "Brazil"
  u.description ""
  u.profile_image_url "http//a3.twimg.com/profile_images/375694897/n17606..."
  u.profile_background_color "C6E2EE"
  u.profile_sidebar_fill_color "DAECF4"
  u.profile_link_color "1F98C7"
  u.profile_sidebar_border_color "C6E2EE"
  u.profile_text_color "663B12"
  u.profile_background_image_url "http//s.twimg.com/a/1272477713/images/themes/theme..."
  u.time_zone "Brasilia"
  u.created_at "2010-05-01 143916" 
  u.updated_at "2010-05-01 145054"
end