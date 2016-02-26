window.Entry = {}

store = []
idCounter = 1

Entry.all = ->
	return store

Entry.create = (attrs) ->
	attrs.id = (idCounter+=1)
	attrs.enteredAt = Date.now()
	store.push(attrs)
	return



