\version "2.24.0"
\language "english"

DCfine = {
  \once \override Score.RehearsalMark.break-visibility = #'#(#t #t #f)
  \mark \markup { \small "D.C. al Fine" }
}

Fine = {
  \once \override Score.RehearsalMark.break-visibility = #'#(#t #t #f)
  \mark \markup { \small \italic "Fine" }
}

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
            title = "CHARACTERISTIC STUDY No. 6"
            dedication = "openArbanProject"
  }
  
  \score {
   \layout { \context { \Score \remove "Bar_number_engraver" }}
    \relative c'
    { \numericTimeSignature \time 6/8
      \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
      \key f \major
      f16( c) f-. a-. c-. f-. a( f) c a f c
      a( c) f a c f a( f) c a f c
      bf( c) e g c e g( e) c bf g e
      c( e) g c e g bf( g) e c bf g \break
      f( c) f a c f a( f) c-. a-. f-. a-.
      d,( cs) d f a d f( e) d c b a
      g( e) g c e g f( d) b g f d 
      c( e) g c e f c4 r8
      
      bf16( a bf) d-. g,-. bf-. e,-. g-. c,( e) g bf
      a( c) f e d c b( c) d c bf a 
      bf( a bf) d-. g,-. bf-. e,-. g-. c,( e) g bf
      a( c) f( e f) d-. c4 r8 \break
      
      cs16( a) gs a b cs d( e) f e d c
      bf a g f e d cs( e) g bf cs e
      g( f) e d cs bf a g f e d cs
      d( f) a d f e d4 r8
      
      d16( cs) d bf f d bf( a bf) d-. f-. bf-.
      d( cs d) bf f d bf( d) f bf d f
      ef( d ef d) c-. b-. c( b c bf) a-. gs-.
      a( gs a g) f-. ef-. d( f) bf-. d-. f8-. \break
      
      fs16( d) cs-. d-. e-. fs-. g( a bf a) g-. fs-.
      g( fs g f) ef-. d-. ef( d ef d) c-. bf-.
      
    }
  }
}
