class AddGoogleOAuthFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    def self.up
      change_table :users do |t|
        t.string :avatar_url
      end
  end
end
