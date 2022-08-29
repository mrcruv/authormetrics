class AddCreatedAtPublications < ActiveRecord::Migration[7.0]
  def change
    add_column :publications, :created_at, :datetime, default: -> { 'CURRENT_TIMESTAMP' }
  end
end

