{"filter":false,"title":"bases_tela.rb","tooltip":"/app/models/bases_tela.rb","undoManager":{"mark":2,"position":2,"stack":[[{"group":"doc","deltas":[{"start":{"row":6,"column":5},"end":{"row":7,"column":0},"action":"insert","lines":["",""]},{"start":{"row":7,"column":0},"end":{"row":7,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":2},"end":{"row":8,"column":0},"action":"insert","lines":["",""]},{"start":{"row":8,"column":0},"end":{"row":8,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":8,"column":2},"end":{"row":11,"column":4},"action":"insert","lines":["\tdef self.search(search, page)","\t\twhere(['upper(nombre) like ?',","\t\t\"%#{search}%\".upcase]).paginate(page: page, per_page: 7).order(\"id\")","\tend"]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":11,"column":4},"end":{"row":11,"column":4},"isBackwards":true},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1420734074671,"hash":"117544e5a1ea252001ab09778c8fbad1e7f37553"}