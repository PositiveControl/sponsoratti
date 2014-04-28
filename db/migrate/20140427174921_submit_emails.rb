class SubmitEmails < ActiveRecord::Migration
  def change
    create_table :emails do |email|
      email.string :email
      email.timestamps
    end
  end
end
