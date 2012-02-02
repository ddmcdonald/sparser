;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id: space.ltml 17507 2010-01-25 17:23:30Z rgoldman $


;;;---------------------------------------------------------------------
;;;---------------------------------------------------------------------
;;;                 New ontology of space (ddm 9/09)
;;;---------------------------------------------------------------------
;;;---------------------------------------------------------------------


;The notion of space is broken out into a number of disjoint (sibbling) classes.

;; 1. The continuous, fully-connected, discrete (??), metrical mesh of
;; reference space that we're using: the surface of the earth (2.5D from
;; a topological perspective, the 3D space of near space, astronomical
;; space, ...
;;   This is something we don't need to represent unless/until we have
;; two of them and need to anchor our measurement system to one or the other.

;; These next three are "thing like" as opposed to the XX which are 
;; relational
;

; 2. Regions situtated in that space. They have a location with respect
; to the regions that subsume them and they provide reference locations
; for the things in them and the subreqions they subsume. They have
; boundaries, interiors, (implicitly they have exteriors), the have
; interesting topological relationships to other regions. They have an
; area, extent. Their boundaries can be interesting objects in their own
; right. (Consider the difference between the border between Candada and
; the US, which is effectively a line with no width and that between
; North and South Korea, which has a very definite extent.) Regions are
; measured in 2D or 3D units depending on whether we're considering them
; from the perspective of areas or volumes.

(Class Region
    (subClassOf top@Space)
  (restrict contains (mincardinality 0) - Region)
  (restrict isContainedBy (mincardinality 0) - Region)
  (realization (:kind "region")))

#|
The fundamental relationships among regions are topological and merological (part - subpart). In the political domain we have nations > {states, provinces, ...} > counties > {cities, towns}. The top of that mereological scale has a robust notion of containment and boundary and such. As you go down to the lower/smaller part of that scale the likelyhood of, e.g. a city (or better yet a 'metropolitan area') falling across several individuated regions that (collectively) contain it is very large and their borders can be fuzzy. There's a town in Vermont that straddles the US/Canadian border.  |#

(Class Country
     (subClassOf Region top@Named)
     (realization (:kind "country")))
  

;(Class FirstPoliticalDecompositionInCountry
;     (subClassOf top@Relationship)
;; This is a second-order relationship between a country and a class of region. 
;; Sould flesh it out when we want to differentiate this sort of thing.

(Class State
     (subClassOf Region top@Named)
  (restrict country (cardinality 1) - Country)
  (realization (:kind "state")))

;; How do you write USState -- where the country is filled in?

(Class City
     (subClassOf Region top@Named)
   (restrict state (cardinality 1) - State)
  (realization (:kind "city")))

;; Minimal set so individual in mdis.ltml doesn't blow up. Where's a convenient
;; list to adapt? -- this should work...

; 3. Points -- which are atomic locations at some granularity (and are regions
; at a higher granularity). Points are always in one (or more) regions. They
; have coordinates -- some means of finding them within a reference region.
;
; A point is probably the right grounding for the notion of 'location', but
; we have to always appreciate the granularity we're using. 

; 4. Paths -- roads, footpaths, region boundaries, etc. Paths are usually 
; situated in more than one individuated region (Consider Mass. Avenue).

; 5. Distance -- a relational kind of space stuff since we have to talk about
; the distance 'between' two points, or 'along' a path. Distance is measured
; in linear units. A distance can be as the crow (helicopter) flies or be
; constrained to be along a path.

; 6. Boundaries and other dependent entities such as holes or cracks

; 7. Granularity

; 8. Spatial units of measure, and spatial measurements

; 9. Spatial relations

; The most important spatial relation for MDIS purposes is probably containment,
; ;which applies between regions. This lets us define Political/Governance regions:

; The political regions (and all the regions/location(points) that we care about
; have names, and there is a notion of the 'next-{larger/smaller}-political unit.
; So the next political unit down for Canada is a 'province', while for the US
; it's a 'state'. Going down the containment chain there will be more political 
; units whose relevance is dependent of the situation. In Massachusetts we have
; 'counties' but they are largely irrelevant and what one does care about is 
; 'towns'/'cities'. 

; A MOB station will be at some location, say Fort Devins (since I can remember
; that one), which is a 'military base', which is the same kind of thing as
; a 'city', i.e. they would have a common parent from which we could have default
; assumptions that extend 'region' such as their having a specific 'population'.











