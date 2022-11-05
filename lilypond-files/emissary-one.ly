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
  title = \markup { \fontsize #1 "emissary_one" }
  composer = \markup { \fontsize #1.5  "bradley mikesell" }
  poet = \markup { \fontsize #1.5  "tuba" }
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
  \tri_mark
  c2->\ff r4 c'\pp-- c-- c2.-- r4 c--\< c4.-- (des8--\mf) 
  \tuplet 6/16 {r16 ees\p\<-. [bes-. a-. e-. f-.->\ff]} 
  \bar "" \break 
  r4 bes,8.\mp\< c32 (e f8.'\f ees16) 
  \tuplet 3/8{r8 \grace {fis(}g-.\p\<) [g-.]} g16-. \grace{aes16(}e8) dis16-.
  \tuplet 6/16 {e->\f [(bes f) g->\ff (des aes)]}
  \bar "" \break
  r8 \override NoteHead.style = #'cross c32\pp\<^\markup {\italic "half-valve"} [e g' b, d f a, c']]
  \revert NoteHead.style e1\ff\fermata r4 
  \tri_mark
  bes4(\p\< \grace {aes32 ges f ees} d8-.\mf) r8
  g-.\p r8 fis-. r bes,-. r r a-.
  \bar "" \break
  r4 \tuplet 3/8 {c8,--(bes des)} r4
  g8-.\< r bes-. r fis--\mf\>([a\p])
  \tri_mark
  r4\fermata
  b4,(\<\fermata \grace {cis32 fis b} 
  \bar "" \break
  c8-.\f) r8\fermata
  bes4,\pp(\<\fermata \grace {c32 e fis} g8.-.\f) f,32\pp[ (ges e des f ges e])
  r16. des32([ c ees ])
  \bar "" \break
  r16. f32([ e des ])
  r16. bes'32([ des c ])
  r16. ees32([ c f ])
  r16. aes32([ g bes c])
  r16. f32,->\ff [f->]
  r16. a32\pp([ e aes ])
  r16. c32([ b dis e ])
  \bar "" \break
  r16. f32([ des c e bes ])
  r16. bes'4\fermata\<
  f32->\f[ e-> f-> ges-> ees-> bes-> ] r16.
  f32,\pp([ e ges ]) r16.
  \bar "" \break
  \override NoteHead.style = #'cross a8.''([\ff^\markup {\italic "half-valve"} d, a' b,])
  e32'-> ([a, d, a e]) r8 \revert NoteHead.style  
  c1''--\pp\<\fermata(b32 [g fis e \tri_mark es8->\f])
  \bar "" \break
  r1\fermata
}

tuba-part = \new Staff \with {

} \tuba

\score {
  <<
    \tuba-part
  >>
  \layout { }
}
