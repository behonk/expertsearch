class Friendship < ApplicationRecord
  scope :friends, ->(member_id) { where(member1_id: member_id).or(Friendship.where(member2_id: member_id)) }
end