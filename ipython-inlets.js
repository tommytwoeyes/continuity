console.info('iPython Inlets script loaded...');

;(function(IPython, $, require, element){
  'use strict';
  // this would be replaced with `nbextensions/inlet`
  var url_base = '//enjalot.github.io/Inlet';
  
  // add the style (for the slider)
  $(element).append($('<style/>')
    .text('@import url("' + url_base + '/inlet.css")'));
  
  // at present, inlet exposes one global: `Inlet`
  require.config({
    paths: {inlet: url_base + '/inlet'},
    shim: {inlet: {exports: 'Inlet'}}
  });
  
  require(["inlet", "underscore"], function(inlet, _){
    $([IPython.events])
      .on('edit_mode.Cell', function(evt, data){
        var cell = data.cell,
          cm = data.cell.code_mirror;
        if(cm._inletted){ return; }
        
        cm._inletted = true;

        inlet(cm);
        
        cm.on("change", _.debounce(
          function(cm, delta){
            if(!delta.origin && data.cell.execute){
              data.cell.execute();
            }
          },
          300
        ));
      });
  });
}).call(this, IPython, jQuery, require, element);