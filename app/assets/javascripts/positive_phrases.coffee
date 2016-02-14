# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  Vue.component(
    "phrase"
    template: "#phrase"
    props:
      text: ""
  )

  new Vue(
    el: "#phrase-list"
    data:
      newPhrase: ""
      phrases: []
    methods:
      createPhrase: ->
        this.phrases.push(this.newPhrase)
  )

  $("#submit-by-jquery").on("click", ->
    $.ajax(
      type: "POST"
      url: "/positive_phrases.json"
      data:
        positive_phrase:
          text:$("#new-phrase").val()
      success: ->
        alert("success")
      error: (a, b, c) ->
        alert("error")
      dataType: "json"
    )
  )
