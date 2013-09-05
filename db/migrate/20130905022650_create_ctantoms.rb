class CreateCtantoms < ActiveRecord::Migration
  def change
    create_table :ctantoms do |t|
      t.string :ctuid
      t.string :ctname
      t.string :ctmailofc
      t.string :ctmailmp
      t.string :ctjname1
      t.string :ctjuid1
      t.string :ctjmailofc1
      t.string :ctjmailmp1
      t.string :ctjname2
      t.string :ctjuid2
      t.string :ctjmailofc2
      t.string :ctjmailmp2
      t.string :ctjname3
      t.string :ctjuid3
      t.string :ctjmailofc3
      t.string :ctjmailmp3

      t.timestamps
    end
  end
end
