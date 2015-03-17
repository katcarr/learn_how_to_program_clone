class CreateSubsections < ActiveRecord::Migration
  def change
    create_table :subsections do |t|
      t.column :name, :string
      t.column :section_id, :integer

      t.timestamps
    end
  end
end
