# inspired by http://shiriru.blogspot.com/2007/12/javascript-simulating-namespaces-part-2.html
window.Namespace = (sName)->
  namespaces = sName.split('.') || [sName]
  root = window
  for namespace in namespaces
    do (namespace)->

      root = if typeof(root[namespace]) == 'undefined'
        root[namespace] = {}
      else
        root[namespace]