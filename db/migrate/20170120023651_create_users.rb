class CreateUsers < ActiveRecord::Migration[5.0]
  def change
      create_table :users, id: false do |t|
        t.string :username
        t.string :privilege
        t.string :password
      t.timestamps
    end
    execute "ALTER TABLE users ADD PRIMARY KEY (username);"
  end
end
