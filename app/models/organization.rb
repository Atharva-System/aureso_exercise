class Organization < ActiveRecord::Base
  include Upsertable

  self.inheritance_column = :_type_disabled

  has_many :models

  enum pricing_policy: Settings.pricing_policies.keys

  scope :by_type, ->(org_type) { where(type: org_type) }

  before_create :create_access_token

  def create_access_token
    self.access_token = SecureRandom.hex.to_s
  end
end
