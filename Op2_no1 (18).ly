
 \header {
  title = "Three Sonatinas Op.2"
  subtitle = "Sonatina (No.1) in DM"
  composer = "BMB Johnson"
  Opus = "Op 2, No. 1"
}

upper = \relative c'' {
  \clef treble
  \key d \major
  \time 4/4

  d,16 fis d'4-> d4-> d8-> [e16 d cis b] 
  a8 a a a a4 b16 a g fis 
  e8 e e e fis16 e dis e g8 [e]
  cis cis cis cis cis2 \bar ":|.:" 
  % 2nd section
  fis'4-> fis-> fis-> g16 fis e d
  cis8 cis cis cis cis4 d16 cis b cis 
  d8 [r d] r e16 d cis d fis8 d 
  b [r b] r cis16 b ais b d8 b \bar ":|." 
  % 3rd section 
  g'8 e e cis cis a a e fis' d d b b g g d e' cis cis ais ais fis fis cis 
  b'16 fis b cis d b d fis b d, fis b d b fis d
  % 3rd section partial repeat
  g8 e e cis cis a a e fis' d d b b g g d e' cis cis ais ais fis fis cis \bar ".|:"
  % 4th section
  b16 d fis b d, fis b d cis, e g b b, e g b
  ais, cis e g g, ais cis e b d fis b fis, b d fis
  b, d fis b d, fis b d eis,, gis b d
  \clef bass
  cis, eis gis b
  \clef treble
  fis a cis fis a, cis fis a gis, cis eis gis cis, fis gis b
  eis, gis cis eis gis, cis eis gis {<<a,2 cis gis'>>}
  {<<fis, b d>>} {<<cis, eis gis>>}
  {<<cis, fis a>>} {<<fis a c>>}
  {<<eis, gis cis>>} {<<fis8 a cis>>} r4 {<<fis,8 a cis>>}
  {<<eis,8 gis cis>>} r4 {<<eis,8 gis cis>>} fis,16 cis a fis cis' a fis cis
  fis cis a fis
  \clef bass
  cis' a fis cis r2 \bar ":|."
}

lower = \relative c {
  \clef bass
  \key d \major
  \time 4/4

 d8 {<<d' fis>>} d, {<<d' fis>>} d,8 {<<d' fis>>} d, {<<d' fis>>} d,8 {<<fis a>>}
 d, {<<fis a>>} d, {<<fis a>>} d, {<<a' e'>>} a,, {<<a' cis>>} a, {<<a' cis>>}
 a, {<<a' cis>>} a, {<<a' cis>>} a, {<<e' g>>} a, {<<e' g>>} a, {<<e' g>>}
 a, {<<e' g>>} \bar ":|.:"
 % 2nd section
 fis {<<cis' e>>} fis, {<<cis' e>>} fis, {<<cis' e>>}
 fis, {<<cis' e>>} fis, {<<ais cis>>} fis, {<<ais cis>>} fis, {<<ais cis>>}
 fis, {<<ais cis>>} b, {<<fis' b>>} b, {<<fis' b>>} b, {<<fis' b>>} b, {<<fis' b>>}
 b, {<<b' d>>} b, {<<b' d>>} b, {<<b' d>>} b, {<<b' d>>}
 % 3rd section
 e, {<<b' e>>} e, {<<cis' e>>} a, {<<e' g>>} cis,, {<<g' cis>>}
 d, {<<a' d>>} d, {<<b' d>>} g, {<<d' fis>>} b,, {<<g' b>>}
 cis, {<<g' cis>>} cis, {<<fis cis'>>} fis,, {<<cis' e>>} fis, {<<cis' ais'>>}
 b,8 fis b cis d b d fis
 % 3rd section partial repeat
 e {<<b' e>>} e, {<<cis' e>>} a, {<<e' g>>} cis,, {<<g' cis>>}
 d, {<<a' d>>} d, {<<b' d>>} g, {<<d' fis>>} b,, {<<g' b>>}
 cis, {<<g' cis>>} cis, {<<fis cis'>>} fis,, {<<cis' e>>} fis, {<<cis' ais'>>} \bar ".|:"
 % fourth section
 r2 e4 g
 cis, e d8. cis16 b4
 r2 gis4 b
 a dis, eis8. fis16 gis4
 r2 {<<fis'4 fis'>>}{<<cis, cis'>>}
 {<<d, d'>>} {<<b, b'>>} {<<gis, gis'>>} {<<cis, cis'>>}
 {<<a, a'>>} {<<fis, fis'>>} fis a
 gis cis, fis8 fis' a, a' gis, gis' cis,, cis' cis4 a
 fis cis fis,2 \bar ":|."
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