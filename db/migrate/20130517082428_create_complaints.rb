class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.boolean :fly_destination
      t.string :from_to_fly
      t.boolean :excess_charged
      t.boolean :indecent_behaviour
      t.boolean :charged_and_allowed_other_complainant
      t.integer :charged_for_luggage
      t.string :from_to_luggage
      t.string :bus_stop_name
      t.string :other_complaints
      t.datetime :occurence_date_time
      t.string :place_occurence
      t.boolean :fault_no_working_meter

      t.timestamps
    end
  end
end
