# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

attach_documents_search_input_listener = () ->
        $("#search-input").on 'change', ->
          $.ajax Routes.update_documents_path(),
            type: 'GET'
            data:
              search_input: $("#search-input").val()
              filiere_id: $("#search-filiere-select").val()
              matiere_id: $("#search-matiere-select").val()

            dataType: 'script'

          return

attach_documents_search_select_filiere_listener = () ->
        $("#search-filiere-select").on 'change', ->
          $.ajax Routes.update_blocs_path(),
            type: 'GET'
            data: 
              filiere_id: $("#search-filiere-select").val()

            dataType: 'script'

          $.ajax Routes.update_documents_path(),
            type: 'GET'
            data:
              search_input: $("#search-input").val()
              filiere_id: $("#search-filiere-select").val()
              matiere_id: ''

            dataType: 'script'

          return

attach_documents_search_select_matiere_listener = () ->
        $("#search-matiere-select").on 'change', ->
          $.ajax Routes.update_documents_path(),
            type: 'GET'
            data:
              search_input: $("#search-input").val()
              filiere_id: $("#search-filiere-select").val()
              matiere_id: $("#search-matiere-select").val()

            dataType: 'script'

          return

attach_upload_select_filiere_listener = () ->
        $("#filieres_select").on 'change', ->
        	$.ajax Routes.update_blocs_path(),
        		type: 'GET'
        		data: 
        			filiere_id: $("#filieres_select").val()

        		dataType: 'script'

        	return

attach_upload_select_file_listener = () ->
		$(document).on "change", ".btn-file :file", ->
  			input = $(this)
  			numFiles = (if input.get(0).files then input.get(0).files.length else 1)
  			label = input.val().replace(/\\/g, "/").replace(/.*\//, "")
  			input.trigger "fileselect", [
    			numFiles
    			label
  			]
  			return
  		$(".btn-file :file").on "fileselect", (event, numFiles, label) ->
    		$('#upload-file-label').html(label)
    		return

  		return

$(document).on('page:load', attach_upload_select_filiere_listener)
$(document).on('page:load', attach_upload_select_file_listener)
$(document).on('page:load', attach_documents_search_input_listener)
$(document).on('page:load', attach_documents_search_select_filiere_listener)
$(document).on('page:load', attach_documents_search_select_matiere_listener)

initialize = $(document).ready ->
    attach_upload_select_filiere_listener()
    attach_upload_select_file_listener()
    attach_documents_search_input_listener()
    attach_documents_search_select_filiere_listener()
    attach_documents_search_select_matiere_listener()