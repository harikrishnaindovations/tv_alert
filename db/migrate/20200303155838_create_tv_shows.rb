class CreateTvShows < ActiveRecord::Migration[6.0]
  def change
    create_table :tv_shows do |t|
      t.string :name
      t.time :telecast_time
      t.references :channel

      t.timestamps
    end
  end
end
