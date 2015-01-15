{"filter":false,"title":"20141104182539_add_attachment_imagen_to_images.rb","tooltip":"/db/migrate/20141104182539_add_attachment_imagen_to_images.rb","undoManager":{"mark":1,"position":1,"stack":[[{"group":"doc","deltas":[{"start":{"row":1,"column":2},"end":{"row":10,"column":5},"action":"remove","lines":["def self.up","  \tadd_attachment :images, :imagen","    change_table :images do |t|","      t.attachment :imagen","    end","  end","","  def self.down","    remove_attachment :images, :imagen","  end"]},{"start":{"row":1,"column":2},"end":{"row":13,"column":6},"action":"insert","lines":["def self.up","      add_column :videos, :vid_file_name,    :string","      add_column :videos, :vid_content_type, :string","      add_column :videos, :vid_file_size,    :integer","      add_column :videos, :vid_updated_at,   :datetime","    end","  ","    def self.down","     remove_column :videos, :vid_file_name","     remove_column :videos, :vid_content_type","     remove_column :videos, :vid_file_size","     remove_column :videos, :vid_updated_at","   end"]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":18},"end":{"row":2,"column":24},"action":"remove","lines":["videos"]},{"start":{"row":2,"column":18},"end":{"row":2,"column":24},"action":"insert","lines":["images"]},{"start":{"row":3,"column":18},"end":{"row":3,"column":24},"action":"remove","lines":["videos"]},{"start":{"row":3,"column":18},"end":{"row":3,"column":24},"action":"insert","lines":["images"]},{"start":{"row":4,"column":18},"end":{"row":4,"column":24},"action":"remove","lines":["videos"]},{"start":{"row":4,"column":18},"end":{"row":4,"column":24},"action":"insert","lines":["images"]},{"start":{"row":5,"column":18},"end":{"row":5,"column":24},"action":"remove","lines":["videos"]},{"start":{"row":5,"column":18},"end":{"row":5,"column":24},"action":"insert","lines":["images"]},{"start":{"row":9,"column":20},"end":{"row":9,"column":26},"action":"remove","lines":["videos"]},{"start":{"row":9,"column":20},"end":{"row":9,"column":26},"action":"insert","lines":["images"]},{"start":{"row":10,"column":20},"end":{"row":10,"column":26},"action":"remove","lines":["videos"]},{"start":{"row":10,"column":20},"end":{"row":10,"column":26},"action":"insert","lines":["images"]},{"start":{"row":11,"column":20},"end":{"row":11,"column":26},"action":"remove","lines":["videos"]},{"start":{"row":11,"column":20},"end":{"row":11,"column":26},"action":"insert","lines":["images"]},{"start":{"row":12,"column":20},"end":{"row":12,"column":26},"action":"remove","lines":["videos"]},{"start":{"row":12,"column":20},"end":{"row":12,"column":26},"action":"insert","lines":["images"]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":2,"column":24},"end":{"row":2,"column":24},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1421331907024,"hash":"5b502b28d2a1686182333445922f1a113ba89d6f"}