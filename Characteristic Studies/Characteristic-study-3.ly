\version "2.24.4"
\language "english"

\header {  
          tagline = "This work is licensed under a CC BY-SA 4.0 license."
          composer = " "
          title = "CHARACTERISTIC STUDY No. 3"
          dedication = "openArbanProject"
}

\score {
  \relative {
    \tempo Moderato
    c'8 \tuplet 3/2 8 { e16( c) e-. g[( e) g-.] c( g) c-. } \tuplet 6/4  4 { e( g) e c g e c( e) g c e g } |

    \omit TupletNumber
    \omit TupletBracket
    
    \tuplet 3/2 8 { c,,[( b c)] e( c) e-. g[( e) g-.] c( g) c-. } \tuplet 6/4 4 { e( g) e c g e c( e) g c e g } |
    \tuplet 6/4 4 { f( e) d c b a g( a) b c d e f( e) d c b a g( a) b c d ds } |
    \tuplet 6/4 4 { e( d c b a g) e'( d c b a g) f'( e d c b a g a g f e d) } |
    c8 \tuplet 3/2 8 { e16( c) e-. g[( e) g-.] c( g) c-. } \tuplet 6/4 4 { e( g) e c g e c( e) g c e g } |
    \tuplet 3/2 8 { c,,[( b c)] e( c) e-. g[( e) g-.] c( g) c-. } \tuplet 6/4 4 { e( g) e c g e c( e) g c e g } |
    \tuplet 6/4 4 { f( e) d c b a g( b) c d e f a( g f e d c) b( a g f e d) } |
    \tuplet 3/2 8 { c[( d) ds-.] e f fs g[( a) b] c d ds } e4 r8 \tuplet 3/2 8 { g,16( fs! g) } |
    
    % it seems a d( b) slur is missing on the original score. It is added here.
    \tuplet 6/4 4 { f!( g) b d( b) g f( g) b d( b) g e( g) c e( c) g e( g) c e( c) g  } |
    
    %Comment: next mesure is 5 beat long on original score. Replacing "g4 r8 g", with "g8 g", to fit 4 beats
    \tuplet 6/4 4 { f( g) b d( b) g f( g) b d( b) g } \tuplet 3/2 8 { e[( g) c] e( c) e } g8 g, |
    \tuplet 6/4 4 { fs16( a) c ef( c) a g( b) d ef( d) b g( b) d e( d) b g( b) d e( d) b } |
    \tuplet 3/2 8 { a[( gs) a-.] b( a) b c[( b) c] d( e) fs } g8 \tuplet 3/2 8 { g16( fs) g } \tuplet 6/4 4 { a( g) fs-. a( g) fs-. } |
    g8 \tuplet 3/2 8 { f!16( e f) } \tuplet 6/4 1 { g( f) e-. g( f) e-. } f8 \tuplet 3/2 8 { d16( cs d) }  \tuplet 6/4 4 { e( d) cs-. e( d) cs-. } |
    \tuplet 6/4 4 { d( e d c d c b c b a b a) } g8 \tuplet 3/2 8 { e'16( d) c-. } \tuplet 6/4 4 { b( a) g-. f( e) d-. } |
    \tuplet 6/4 4 { c( e) g c e g c,,( e) g c e g c,,( e) g c e g c,,( e) g c e g} |
    \tuplet 6/4 4 { f( g f e f e d e d c d c b c b a b a) g( a g) f( e) d-. } |
    \tuplet 6/4 4 { c( e) g c e g c,,( e) g c e g c,,( e) g c e g c,,( e) g c e g} |
    \tuplet 6/4 4 { f( g f e f e d e d c d c b c b a b a) g( a g) f( e) d-. } |
    \tuplet 6/4 4 { c( e) g c e g f( d) b g f d c( e) g c e g f( d) b g f d } |
    \tuplet 6/4 4 { c( b c) d e f fs g gs a bf b } c4 \bar "||"
    
    \key f \major
    %TODO check how reminder bf accidentals are displayed on original score (it seems to be inconistent)
    r16\p c( b c |
    bf!\< c a c g c e, c' f,) a( gs a\!) c,\p c'( b c) |
    bf\<( c a c g c e, c') f,4\p~ f16 c'( b c) |
    bf!\<( c a c g c e, c') f,-. a\p( gs a) c, c'( b c) |
    % why is there an explicit accidental on the last "e!"?
    bf\<( c a c g c e, c') f,4\p~ f16 f'( e! f) |
    ef!( f d f c f a, f') bf,-. d( cs d) f,-. f'( e! f) |
    ef!( f d f c f a, f') bf,4~ bf16 d( cs d) |
    c( d bf d a d fs, d') g, bf( a bf) d, d'( cs d) |
    c( d bf d a d fs, d') g,4~ g16 d'( e! d ) \bar "||"
    
    \key d \major
    cs( d) e fs g( e) cs a d fs( es fs) a, d( e d) |
    cs d e fs g( e) cs a d4~ d16 d( e d) |
    cs( d) e fs g( e) cs a d fs( es fs) a, d( e d) |
    %strange cs! reminder accidental
    cs( d) e fs g( e) cs a d4~ d16( e) cs!( e) |
    d4~ d16( e) cs( e) d( e) cs( e) d( e) cs( e) |
    d( e) c( e) b( c) a( b) g4~ g16 d'( cs d) \bar "||"
    
    \key g \major
    c!( d b d a d fs, d') g, b( as b) d, d'( cs d) |
    c!( d b d a d fs, d') g,4~ g16 d'( cs d) |
    c!( d b d a d fs, d') g, b( as b) d, d'( cs d) |
    c!( d b d a d fs, d') g,4~ g16 fs( g fs |
    g fs g) a-. b( a b) c d4~ d16 as( b as |
    
    \set fontSize = -4
    b as b) c d( cs d) e fs4~\fermata fs32( e g fs a g fs e) |
    \omit Score.BarLine
    d( cs e d fs e d c) b( as c b d c b a) g4\fermata \tuplet 4/8 { a32[ g fs g] } |
    gs( a bf b c cs d ds e f fs g fs f e ds! d cs! c b bf a gs g fs f e ef d df d df) \bar "||"
    \undo \omit Score.BarLine
    \set fontSize = 0
    \key c \major
    
    \tuplet 6/4 4 { c16( e) g c e g c,,( e) g c e g c,,( e) g c e g c,,( e) g c e g} |
    \tuplet 6/4 4 { f( g f e f e d e d c d c b c b a b a) g( a g) f( e) d-. } |
    \tuplet 6/4 4 { c( e) g c e g c,,( e) g c e g c,,( e) g c e g c,,( e) g c e g} |
    \tuplet 6/4 4 { f( g f e f e d e d c d c b c b a b a) g( a g) f( e) d-. } |
    \tuplet 6/4 4 { c( e) g c e g f( d) b g f d c( e) g c e g f( d) b g f d } |
    %TODO add accelerando as in some versions?
    c( g') g g b( g) g g c( g) g g b( g) g g |
    c( g ) g g b( g) g g c( g) g g b( g) g g |
    %TODO add ritardando?
    c4 c8. c16 g4 e4 |
    c1\fermata
    \bar "|."
  }
}
