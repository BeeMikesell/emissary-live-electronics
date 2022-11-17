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
  
  #(define fonts
    (make-pango-font-tree "Monaco"
                          "Nimbus Sans, Nimbus Sans L"
                          "DejaVu Sans Mono"
                          (/ staff-height pt 20)))
}

\header {
  title = \markup { \fontsize #1 "emissary_one" }
  composer = \markup { \fontsize #1.5  "bradley mikesell" }
  poet = \markup { \fontsize #1.5  "tuba" }
  copyright = \markup { \fontsize #-1 "Copyright © 2022 Mikesell Music." }
  tagline = ##f
}

global = {
  \tempo "Senza misura"
  \clef \bass
  \omit Staff.TimeSignature 
  \hide Staff.BarLine
}

tri_mark = \mark \markup \center-align {\scale #'(3 . -3) \whiteTriangleMarkup}

tuba = \relative c' {
  \global
  
  \tri_mark
  bes1\pp\<\fermata(aes32 [ges f ees d8->\f]) r8 
  c'1\p\<\fermata d32\f ([(f des f] c16)  [b8->\> (bes16\p)]
  \tuplet 6/16 {r16 c-.\< [g-. des-. bes-. f-.]} 
  \bar "" \break 
  \tri_mark
  c2->\ff r4 c'\pp-- c-- c2.-- r4 c--\< <c g'\harmonic>4.^\markup {\italic "multiphonic"} (<des aes'\harmonic>8\mf)
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
  \override NoteHead.style = #'cross a8.''(:64[\ff^\markup {\italic "half-valve, flz."} d,:64 a':64 b,:64])
  e32'-> ([a, d, a e]) r8 \revert NoteHead.style  
  c1''--\pp\<\fermata(b32 [g fis e \tri_mark es8->\f])
  \bar "" \break
  r1\fermata
  f2,~\pp\< <f c'\harmonic>1\mf\>^\markup {\italic "multiphonic"} r4\p
  <f c'\harmonic>8\< ([<e bes'\harmonic>]) <aes ees'\harmonic>4.--\mf\> (<g d'\harmonic>8\p) r4
  \bar "" \break
  <des aes'\harmonic>4.\pp (<bes' f'\harmonic> <g d'\harmonic>) r8 a'\<([ees])
  <d a'\harmonic>4.\mp (<ges des'\harmonic> <f c'\harmonic>) r8 a\<([ees bes])
  \bar "" \break
  a16.->\ff [g'-> f->e,->(] fis2\>~ <fis cis'\harmonic>2.) r4\pp
  c-- c-- c2.-- r4 c--\< <c g'\harmonic>4. (<des aes'\harmonic>8\mf)
  \bar "" \break 
  \tri_mark
  r1\fermata
  <c' g'\harmonic>2\p r4 <f, c'\harmonic>2\p r4 <bes f'\harmonic>2->\ff r4 
  <e, b'\harmonic>2.\p\<(f4) \tuplet 3/2 {e (aes,\f) d'--\pp(} 
  \bar "" \break 
  d2) r8 f,16\< [f f f] f [f f f] f [f f] \tuplet 3/16 {bes,->\ff (ges'') r16} \tuplet 3/16 {r a,-> [(f'')]}
  \bar "" \break 
  c2:32->\>~^\markup {\italic "flz."} c32\mp\<[ b-> c-> des-> bes-> a-> ]
  \tri_mark \tuplet 3/8 {b8->\ff (e,) r8} \tuplet 3/8 {c8-> (f,) r8} 
  r4 \tuplet 3/8 {des8\p (ges,) r8}
  \bar "" \break 
  r8 <des' aes'\harmonic>8\mp [(<c g'\harmonic>)] r4 
  bes4'(\p\< \grace {aes32 ges f ees} d8-.\mf) r8 c8--([d]) r4\fermata
  \override NoteHead.style = #'cross 
  c32\pp^\markup {\italic "half-valve"} ([e a d a']) e32' ([a, d, a e]) r8
  \bar "" \break 
  c32\mp ([e a d a']) e32' ([a, d, a e]) r8
  c32\f ([e a d a']) e32' ([a, d, a e]) r8
  c32->\fff ([e a d a']) e32'-> ([a, d, a e]) r8 \revert NoteHead.style  
  \bar "" \break 
  aes32,\f^\markup {\italic "lip slur"}[( ees' aes c ees ges aes bes c )]
  r8 f16-.\p [a,-. r e'-.] r f,-.\mf [bes,-. c-.] r a8.:64->\ff^\markup {\italic "flz."}
  \bar "" \break 
  \tuplet 6/16 {r16 c-.\p\< [g-. des-. bes-. f-.]} \tri_mark bes,2->\ff 
  r4\fermata bes4-> e'-> aes,-> r4\fermata g''2.--\pp r4\fermata
  \bar "" \break 
  f,2.--\mp (e4) r4\fermata \tuplet 3/8 {c8''\p--[(bes des)]} r4\fermata 
  des,,\pp-- r4\fermata 
  <ges, des'\harmonic>1\fermata
  \bar "" \break 
  r4\fermata bes'\<([ees,])
  <d a'\harmonic>4\mp\> (<ges des'\harmonic> <f c'\harmonic>\pp)
  r4\fermata <ges, des'\harmonic>1\fermata
  
  \undo \hide Staff.BarLine
  \bar "|."
}

tuba-part = \new Staff \with {

} \tuba

\score {
  <<
    \tuba-part
  >>
  \layout { }
}
