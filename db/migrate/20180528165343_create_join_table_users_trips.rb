class CreateJoinTableUsersTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips_users, id: false do |t|
      t.belongs_to :trip, index: true
      t.belongs_to :user, index: true
    end
  end
end
