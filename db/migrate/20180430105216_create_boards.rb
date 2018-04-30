class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.string :title #string 타입으로 title이름을 가진 column
      t.text :content
      
      t.timestamps
    end
  end
end
