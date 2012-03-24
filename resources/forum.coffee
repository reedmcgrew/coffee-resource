exports.index = (req, res) ->
  res.send('forum index')

exports.new = (req, res) ->
  res.send('new forum')

exports.create = (req, res) ->
  res.send('create forum')

exports.show = (req, res) ->
  res.send('show forum ' + req.params.forum)

exports.edit = (req, res) ->
  res.send('edit forum ' + req.params.forum)

exports.update = (req, res) ->
  res.send('update forum ' + req.params.forum)

exports.destroy = (req, res) ->
  res.send('destroy forum ' + req.params.forum)
