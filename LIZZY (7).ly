 \version "2.18.2"
 \header {
  title = "LIZZY"
  subtitle = "Overture"
  composer = "BMB Johnson"


}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \tempo 4 = 120
  

  {r1} {r1 \bar ".|:"}
  {<<e,4. a c e>> <<e,~ a~ c~ e>> <<e,4 a c e>>}
  {<<f,8 a d>> <<f,4 a d>> <<f, a e'>> <<f,4. a d>>}
  {<<e,8 a c>> <<e,4 a c>> <<e, a d>> <<e,4. a c>>}
  {<<d,1 f a b>>}
  {<<e,4. a c e>> <<e,~ a~ c~ e>> <<e,4 a c e>>}
  {<<f,8 a f'>> <<f,4 a e'>> <<f, b d>> <<f,4.a c>>} 
  {<<f,8 b d>> <<f,4 b d>> <<f, c' e>> <<f,4. b d>>}
  {<<d,8 e gis b>> <<d,4 e gis b>> <<d, e gis c>> <<d,4. e gis b>> \bar ":..:"}
  %2nd part of first theme
  {r2 <<c,8 e a c>> <<c,4 e a c>> <<c,8~ f~ b~>>}
  {<<c,8 f b>> <<c,2.~ f~ a~>> <<c,8~ f a>>}
  {c,2 <<e,8 c'>> <<e,4 c'>> <<f,8~ b~>>}
  {<<f b>> <<f2.~ c'~>> <<f,8 c'>> \bar ":|."}
  %3rd part - exposition
  {e4. f8 e4. a8}
  {e8 d c d b2}
  {f'4. ges8 f4. b8}
  {f8 aes f c' b2}
  \teeny
  {aes8 f d f d b aes b}
  {aes f d ees \normalsize <<f2 g b\fermata >>}
  %4th part / Waltz
  \time 3/4
  \clef bass
  {<<e,4^"Waltz"  c'>> g e'}
  {<<e, c'>> g e'}
  << \override Stem.direction = #DOWN {b4} 
      \\ {\override Stem.direction = #UP d8 e f4 d} >>
  {<<g,4 e'>> c c}
  \clef treble
  {<<g e'>> b f'}
  
  
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \tempo 4 = 120

 {<<a4 a'>> <<a, a'>> <<a, a'>> <<a, a'>>} 
 {<<a,4 a'>> <<a, a'>> <<a, a'>> <<a, a'>> \bar ".|:"}
 {<<a,4 a'>> <<a, a'>> <<a, a'>> <<a, a'>>}
 {<<a,4 a'>> <<a, a'>> <<a, a'>> <<a, a'>>}\break
 {<<a,4 a'>> <<a, a'>> <<a, a'>> <<a, a'>>}
 {<<a,4 a'>> <<a, a'>> <<a, a'>> <<a, a'>>} 
 {<<a,4 a'>> <<a, a'>> <<a, a'>> <<a, a'>>}
 {<<a,4 a'>> <<a, a'>> <<a, a'>> <<a, a'>>}\break
 {<<d, d'>> <<d, d'>> <<d, d'>> <<d, d'>>}
 {<<gis,, gis'>> <<gis, gis'>> <<gis, gis'>> <<gis, gis'>> \bar ":..:"} 
 %2nd part of first theme
 {<<a,4 a'>> <<a, a'>> <<a, a'>> <<a, a'>>}
 {<<a,4 a'>> <<a, a'>> <<a, a'>> <<a, a'>>} \break
 {<<a,4 a'>> <<a, a'>> <<a, a'>> <<a, a'>>}
 {<<a,4 a'>> <<a, a'>> <<a, a'>> <<a, a'>> \bar ":|."}
 %3rd part - exposition
 {a aes g ges}
 {f e d g,} \break
 {f' e ees d}
 {des c <<g2 b f'>>}
 {r1}
 {r2 <<g, b d\fermata >>} \break
 %4th part / Waltz
  \time 3/4
  {<<c,4 c'>> r2}
  {<<c,4 e>> r2}
  {<<g,4 g''>> r2}
  {<<c,4 c'>> r2}
  \override Stem.direction = #DOWN 
     {<<e,,4 e'>> r2}
  
  
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

