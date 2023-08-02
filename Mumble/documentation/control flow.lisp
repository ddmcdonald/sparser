(in-package :mumble)

say -> mumble ->
  phrase-structure-execution ; loops over *current-position*
    slot: process-slot
    node: process-node

process-slot
  contents <= realization-cycle of slot contents


realization-cycle
   contents <= realize(<contents-of-slot>)

realize ; massive type dispatch
  dtn: 2 step procedure
    1st: root-node <= dispatch on the type of the dtn's resource
    2d: dispatch on major category of the root-node
      clause -> clausal-bundle-driver
      np -> general-np-bundle-driver

general-np-bundle-driver (in Mumble/interface/bundles/bundle-drivers.lisp)
  -> should-be-pronominalized-in-present-context(dtn)
     ;; If it makes a non-nil return the value will be
     ;; a symbol that names the rationale for using a pronoun

* Debugging

m> (current-position)
#<slot adjp-head>
m> *current-phrasal-root*
#<phrasal-context adjp>
m> (d *)
#<phrasal-context adjp>
  [structure-object]

Slots with :instance allocation:
  postprocessed?                 = t
  name                           = adjp
  storage-type                   = nil
  minimal-construction-function  = nil
  construction-macro             = nil
  type-predicate                 = nil
  setters                        = nil
  mcatalog                       = nil
  properties                     = nil
  postprocessing-fn              = nil
  re-definition-fn               = nil
  node                           = #<phrasal-root adjp>
  position-table                 = ((adjp-head . #<slot adjp-head>) (adjp . #<phrasal-root adjp>))
  available-aps                  = ((#<splicing-attachment-point adjp-prep-complement>..
  state                          = nil
  original-rspec                 = #<dtn for #<has-attribute 11487>>
  objects-referenced             = nil
#<phrasal-context adjp>
