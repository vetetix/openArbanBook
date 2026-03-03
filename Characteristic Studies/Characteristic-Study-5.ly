\version "2.24.4"
\language "english"

\header {  
          tagline = "This work is licensed under a CC BY-SA 4.0 license."
          composer = " "
          title = "CHARACTERISTIC STUDY No. 5"
          dedication = "openArbanProject"
}

\score {
  %% Characteristic study no. 4 - Ed. 1864 p. 197
  %                               Ed. 1893 p. 289
  \relative c'' {
    \numericTimeSignature \time 2/4
    \tempo "Allegro"
    \key c \major
    \partial 4
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    %\set beatStructure = 3,2
    \tuplet 3/2 8 { g16 \>  a g \! } e_. a_.  |
    \fine
  }
}