class CreateAbout < ActiveRecord::Migration[5.0]
  def change
    create_table :abouts do |t|
      t.text 'description'
    end
  end
end
