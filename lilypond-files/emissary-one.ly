%{ 
    emissary_one for tuba and live electronics
        by bradley mikesell 
        bradleymikesell.com

    a part of EMISSARY
        https://github.com/BeeMikesell/emissary-live-electronics

    Copyright © 2022 Bradley Mikesell
%}

\version "2.20.0"

\paper 
{
  top-margin = 12
  bottom-margin = 12
  right-margin = 12
  left-margin = 12
  system-system-spacing = #'((basic-distance . 15) (padding . 5))
}

\header {
  title = "emissary_one"
  composer = "bradley mikesell"
  tagline = "Copyright © 2022 Mikesell Music. All Rights Reserved."
}

global = {
  \tempo "Senza misura"
  
  \omit Staff.BarLine 
  \override Staff.BarLine.break-visibility = ##(#f #f #f) 
  \omit Staff.TimeSignature 
}

tri_mark = \mark \markup \center-align {\scale #'(3 . -3) \whiteTriangleMarkup}

tuba = \relative c' {
  \global
  \clef \bass
  
  \tri_mark
  bes1\pp\<\fermata(aes32 [ges f ees d8->\f]) r8 
  c'1\p\<\fermata d32\f ([(f des f] c16)  [b8->\> (bes16\p)]
  \tuplet 6/16 {r16 c-.\< [g-. des-. bes-. f-.]} 
  \bar "" \break 
  c2->\ff r4 c'\pp-- c-- c2.-- r4 c--\< c4.-- (des8--\mf) 
  \tuplet 6/16 {r16 ees\p\<-. [bes-. a-. e-. f-.->\ff]} 
  \bar "" \break 
  r4 bes,8.\mp\< c32 (e f8.'\f ees16) 
  \tuplet 3/8{r8 \grace {fis(}g-.\p\<) [g-.]} g16-. \grace{aes16(}e16-.) \tuplet 3/16 {e->\f [(bes f)]}
}

tuba-part = \new Staff \with {
  instrumentName = "Tuba"
  shortInstrumentName = "1"
} \tuba

\score {
  <<
    \tuba-part
  >>
  \layout { }
}
