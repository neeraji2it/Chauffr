class CreateTimeBasedTimings < ActiveRecord::Migration
  def change
    create_table :time_based_timings do |t|
      t.time :fromtime
      t.time :totime
      t.timestamps
    end
  end
end
