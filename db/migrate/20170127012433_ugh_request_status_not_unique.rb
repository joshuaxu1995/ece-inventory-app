class UghRequestStatusNotUnique < ActiveRecord::Migration[5.0]
  def change
     remove_column :requests, :status
     add_column :requests, :status, :int
  end
end
