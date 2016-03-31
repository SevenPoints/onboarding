class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :employee_number
      t.string :email
      t.string :work_phone
      t.string :mobile
      t.references :company, index: true

      t.timestamps
    end
  end
end
