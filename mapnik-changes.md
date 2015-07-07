Mapnik working copy of [clipper](http://sourceforge.net/projects/polyclipping/files/).

Why this fork?
 
  - We want to adapt Mapnik geometries to clipper algorithms in a zero-copy way.
   - This fork reworks the clipper c++ code to be able to pass in specialized data structures
   - This fork also provides a shell script to rename clipper `X` and `Y` variables lowercase so they can be the [same as Mapnik](https://github.com/mapnik/mapnik/blob/master/include/mapnik/geometry.hpp#L57-L58)
  - Once we forked we found it useful to make a few other modifications like:
   - Using `stable_sort` to ensure test results are stable across Linux and OS X: https://github.com/mapnik/node-mapnik/issues/442#issuecomment-110133213
   - To avoid abort on uncatchable/invalid exception: https://github.com/mapnik/clipper/commit/7c73dedbed7abcbc3aa0acc3bfbd7a62ff75e5ec
  
 Currently developing and using the `r493-mapnik` branch in:

   - https://github.com/mapbox/mapnik-vector-tile
   - https://github.com/mapnik/node-mapnik

See our changes: https://github.com/mapnik/clipper/compare/r493...r493-mapnik

We are using r493 rather than r494 due this this bug introduced in r494: https://github.com/mapbox/mapnik-vector-tile/issues/115


