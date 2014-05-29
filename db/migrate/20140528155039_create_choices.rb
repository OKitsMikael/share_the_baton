class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.references :checkpoint
      t.references :user
      t.text :feedback
      t.boolean :is_correct
    end
  end
end
