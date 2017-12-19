#= require typeahead

$(@).on 'turbolinks:load', ->
  $('.twitter-typeahead').each ->
    el = $(@)
    el.replaceWith(el.find('.typeahead[name]').removeClass('tt-input').detach())

  $('.typeahead').each ->
    el = $(@)
    name = el.data('typeahead-name')
    source = el.data('typeahead-source')

    el.typeahead({
      hint: true,
      highlight: true,
      minLength: 1
    },
    {
      name: name,
      source: new Bloodhound(
        datumTokenizer: Bloodhound.tokenizers.whitespace,
        queryTokenizer: Bloodhound.tokenizers.whitespace,
        local: source
      )
    })

    el.select() if el.data('typeahead-autofocus') && el.val().length == 0
