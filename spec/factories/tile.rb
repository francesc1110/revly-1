FactoryGirl.define do
  factory :tile do
    message { Faker::HipsterIpsum.words(num=4).join(" ") }
    track_id { "http://api.soundcloud.com/tracks/123?client_id=#{SOUNDCLOUD_CLIENT_ID}"}
  end
end