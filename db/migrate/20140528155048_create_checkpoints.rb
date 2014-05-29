class CreateCheckpoints < ActiveRecord::Migration
  def change
    create_table :checkpoints do |t|
      t.text :video_url
      t.string :prompt
      t.references :course
    end
  end
end
