class CreateLogstashes < ActiveRecord::Migration
  def change
    create_table :logstashes do |t|

      t.timestamps
    end
  end
end
