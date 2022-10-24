%{ 
    emissary_zero for two trumpets and live electronics
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
  title = "emissary_zero"
  composer = "bradley mikesell"
  copyright = "Copyright © 2022 Mikesell Music. All Rights Reserved."
}

global = {
  \tempo "Senza misura" 4=132
  
  \omit Staff.BarLine 
  \override Staff.BarLine.break-visibility = ##(#f #f #f) 
  \omit Staff.TimeSignature 
}

tri_mark = \mark \markup \center-align {\scale #'(3 . -3) \whiteTriangleMarkup}

trumpet-one = \relative c'' {
  \global
  
  \tri_mark
  [b16->\f^\markup {\italic "straight mute"}(c) e] s8. 
  [f16->(e) e] s4 s16 aes8-.\mp s8 
  [dis,16\<(e f g f e\f)] s4. 
  [cis16-. g'-. d->(aes)] s8. 
  [fis'16\p(e) b]
  \bar "" \break 
  s8. [e8,\mp\<(dis'16) dis dis \once\omit Accidental dis->\f] s8. 
  [g16,\p(e')bes-. c-.] s4 s4
  [bes'16\f(fis) g16-. e-. aes(d,)] s2
  [bes32->\> bes bes bes \once\omit Accidental bes\p] s4
  \bar "" \break
  [e16\<(dis f g gis b\f)] 
  \tri_mark s8. s8. s8. s2
  [fis16,\p\< fis fis fis fis->\p] s4
  [d16\p\< d d->\f]
  \bar "" \break
  s4 \tuplet 3/2 {[c8''->\f c->(\override NoteHead.style = #'empty e)]} \revert NoteHead.style s4
  des16,-+\pp(ees f) s8. c16,(des-+ ees-+) f s4 
  [f8.\<(e16')] \tuplet 3/16 {[cis16\mf(f e} a8,-+)]
  \bar "" \break
  s4 [cis16\p-+(e)] s4. [f16\mp(b, a-+ b)]
  s4 dis16\<-+(e f-+ e\f) s2 s4 

  \bar "" \break
  
  % TBD
  
}

trumpet-two = \relative c'' {
  \global
  
  s8. [ees16^\markup {\italic "straight mute"}\f(d) f] s8. 
  [b16,\p\< b b b b->\f] s8 
  [fis16->(g)] s4.
  \grace {aes'16(}[g8)\mf f->(e)] s4
  [ees16\p(des) bes] s8.
  \bar "" \break
  [f16\f(ees) c] s4. 
  [g16''\p(fis) fis-.] s4 
  [a16,,\<(c) e g] \tuplet 3/4 {a16\f(cis e} g8) s4
  \tuplet 3/4 {[g8,->\>( ges f\p)]} s8 s32
  [f16\mp(b,) a(b)]
  \bar "" \break
  s4. f8.''\p\<(g,) aes'\f\>(bes2,\p) s4 s16
  [e16\p\< e16 e16 e16->\f] s8.
  \bar "" \break
  [aes16->\f g32\p\< g g g b16->\f] s4
  [aes16->-.\> d,-. g(c,\p)] s8.
  [g16\f(aes bes-+)] s4
  \grace fis16( \tuplet 3/2 {[g8-.\>) d-. b-.\p]} s1 s4.
  \bar "" \break
  [f16'\f(e8) f'-.\p] s8 \tuplet 3/2 {[g8,,\< g g]} g--\mf s4
  [f16'\mp\<(e8-+) fis-.\f] s4 a4.,\>(ees8'-+ [des]-+\p)
  
  \bar "" \break

  % TBD
  
}

trumpet-one-part = \new Staff \with {
  instrumentName = "Trumpet 1"
  shortInstrumentName = "1"
} \trumpet-one

trumpet-two-part = \new Staff \with {
  instrumentName = "Trumpet 2"
  shortInstrumentName = "2"
} \trumpet-two

\score {
  <<
    \trumpet-one-part
    \trumpet-two-part
  >>
  \layout { }
}
