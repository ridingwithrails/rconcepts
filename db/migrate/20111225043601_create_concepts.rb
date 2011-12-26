class CreateConcepts < ActiveRecord::Migration
  def change
    self.transaction do
      create_table :concepts do |t|
        t.string :word
        t.string :photo
        t.timestamps
      end
    end
  end
end
