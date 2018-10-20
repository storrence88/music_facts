class CreateMusicFacts < ActiveRecord::Migration[5.2]
  def change
    create_table :music_facts do |t|
      t.string :fact

      t.timestamps
    end
  end
end
