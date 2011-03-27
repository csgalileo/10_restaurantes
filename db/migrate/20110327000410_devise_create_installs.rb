class DeviseCreateInstalls < ActiveRecord::Migration
  def self.up
    create_table(:installs) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :installs, :email,                :unique => true
    add_index :installs, :reset_password_token, :unique => true
    # add_index :installs, :confirmation_token,   :unique => true
    # add_index :installs, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :installs
  end
end
