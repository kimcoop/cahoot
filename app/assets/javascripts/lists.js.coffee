Namespace 'Cahoot.ListManager'

(($, ch) ->
	ch.ListManager = {

		initialize: () ->

		addItemToList: () ->
			alert('test')

    initItemsSelectForList: () ->
      $('#items-select-for-list').select2 {
        placeholder: "Search for items",
        minimumInputLength: 1,
        multiple: true,
        width: "80%",
        ajax: {
          url: "/items.json"
          dataType: 'json'
          data: ( term, page ) -> q: term
          results: ( data, page ) ->
            results = { results: [] }
            $.each data, ( index, data_element ) ->
              results.results.push data_element
            results
        }
        initSelection: ( element, callback ) ->
          $(element).select2 'data', ''
        formatResult: ( item ) -> item.name
        createSearchChoice: ( term ) ->
          name: term
        formatSelection: ( item ) ->
          item.name
      }


	}
	false
)(jQuery, Cahoot)