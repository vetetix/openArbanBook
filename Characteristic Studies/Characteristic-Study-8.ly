\version "2.24.0"
\language "english"

\book {
  \paper {
    indent = 0\mm
    scoreTitleMarkup = \markup {
      \fill-line {
        \null
        \fontsize #4 \bold \fromproperty #'header:piece
        \fromproperty #'header:composer
      }
    }
    fonts = #
  (make-pango-font-tree
   "Lato"
   "Lato"
   "Liberation Mono"
   (/ (* staff-height pt) 2.5))
  }
  
  \header {  
            tagline = "This work is licensed under a CC BY-SA 4.0 license."
            composer = " "
            title = "CHARACTERISTIC STUDY No. 8"
            dedication = "openArbanProject"
  }
  
  \score {
   %% Characteristic study no. 8 - Ed. 1864 p. 200
   \layout { \context { \Score \remove "Bar_number_engraver" }}
    \relative c'
    { \time 4/4
      \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
      \key d \minor
      d'16-. d( f) f( e) e( d) d( cs) cs( e) e( a,) a( cs) cs( |
      d) d( f) f( e) e( d) d( a') a( g) g( f) f( e) e( |
      d) d( f) f( e) e( d) d( cs) cs( e) e( a,) a( cs) cs( |
      d) d( f) f( e) e( a) a( d,4)~ d16 d( df) df( |
      c) c( bf) bf( d,) d( e) e( f) f( a) a( c) c( f) f( |
      e) e( g) g( bf,) bf( d) d( c) c( f) f( a,) a( c) c( | \break
      bf) bf( g) g( d) d( e) e( f) f( a) a( c) c( f) f( |
      e) e( c) c( bf) bf( g) g( f4) cs'\trill \appoggiatura { \bar "" b16 cs \bar "|" } |
      % invisible barline with appoggiatura so that it is not place at in the following bar.
      
      d d( f) f( e) e( d) d( cs) cs( e) e( a,) a( cs) cs( |
      d) d( f) f( e) e( d) d( a') a( g) g( f) f( e) e( |
      d) d( f) f( e) e( d) d( cs) cs( e) e( a,) a( cs) cs( |
      d) d( f) f( e) e( a) a( d,4)~ d16 d( cs) cs( |
      d4)~ d16 d( cs) cs( d) d( cs) cs( d) d( cs) cs( | 
      d) d( cs) cs( d) d( cs) cs( d4) cs |
      
      \teeny
      c?8~ c16( bf g e) c8 d'
    }
  }
}
