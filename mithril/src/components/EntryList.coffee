window.EntryList = {}


EntryList.view = ->
	m '.entry-list',
		[
			m 'h1', 
			"all Entries"
			m 'a[href=/entries/new]',
			{config: m.route},
			"Add new Entry"
			Entry.all().map(entryView)
		]

entryView = (entry)->
	date = new Date(entry.enteredAt)
	m '.entry',
	[
		m 'label',
			"entered at: ",
			date.toString() 
		m 'ul',
			entry.volunteers.map(volunteerView)
	]

volunteerView = (volunteer) ->
	m 'li.volunteer',
	[
		m 'label',
			volunteer.name
		m 'label',
			"(" + volunteer.email + ")"
	]

