FactoryGirl.define do
  factory :organization do
    name "MyString"
    public_name "MyString"
    type "ShowRoom"
    pricing_policy 1
    access_token SecureRandom.hex.to_s
  end
end
