
 \header {
  title = "Independance Waltz"
  composer = "BMB Johnson"
}

upper = \relative c'' {
  \clef treble
  \key b \major
  \time 3/4

  r2. | 
  \repeat volta 2 {e16 dis e dis gis,8~ [gis g16 a gis e]}
}

lower = \relative c {
  \clef bass
  \key b \major
  \time 3/4

  cis,8 [<gis'' cis e> <gis cis e>] cis,,8 [<gis'' cis e> <gis cis e>] |  
  \repeat volta 2 {cis,, [<gis'' cis e> <gis cis e>] cis,, [<a'' cis e> <gis cis e>]}
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