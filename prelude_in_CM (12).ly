
 \header {
  title = "Prelude in C Major"
  composer = "BMB Johnson"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

 {<<c,4 e g c>>} {<<c,e g c>>}	
	<< \override Stem.direction = #DOWN {<<c,2 f>>} \\ \override Stem.direction = #UP {bes8 [a] b [c]}>>
 {<<c,4 e g>>} {<<g, c e>>} 
    << \override Stem.direction = #DOWN {<<a,8 c>> \tieDown f8~ f4} \\ \override Stem.direction = #UP 
    {a8 [f] b [c]}>>
 << \override Stem.direction = #DOWN {<<a4 f>> <<a f>> e e8 g} \\
    {\override Stem.direction = #UP \tieUp e'4 d8 gis,16 a d4~ <<d c>>}>>
 << \override Stem.direction = #DOWN \tieDown {c,4~ <<c8 f>> d <<c4 d>> <<b4 d>>} \\
    {\override Stem.direction = #UP a'4 a g g} >> 
	\bar ":|." \break
	% 2nd set
 << \override Stem.direction = #DOWN {<<g2 c>> \tieDown <<b4 gis~>> <<b gis>>} \\
    {\override Stem.direction = #UP e'2 e4 e8 f}>>
 << \override Stem.direction = #DOWN {<<a,2 c>> <<a d>>} \\
    \override Stem.direction = #UP {e2 f} >>
 << \override Stem.direction = #DOWN {<<b,2 d>> c} \\
    \override Stem.direction = #UP {g'2 e} >>
 << \override Stem.direction = #DOWN \tieDown {<<gis,4~ b~>> <<gis b>> <<c2 e>>} \\
    \override Stem.direction = #UP \tieUp {e4~ e8 f a2} >>
 << \override Stem.direction = #DOWN {<<c,2 f>> <<d f>>} \\
    \override Stem.direction = #UP {a2 b} >>
 \time 6/4
 << \override Stem.direction = #DOWN {<<e,2. g>> <<c, f>>} \\
    \override Stem.direction = #UP {c' ais} >>
 
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

 {<<c,4 c'>>} {<<e, e'>>} \override Stem.direction = #DOWN {<<f,2 f'>>}
 \override Stem.direction = #UP {<<c,4 c'>>} {<<e, e'>>} \override Stem.direction = #DOWN {<<f,2 f'>>}
 \override Stem.direction = #UP {<<d, d'>>} {<<e, e'>>}
 \override Stem.direction = #DOWN {<<f, f'>>} {<<g, g'>>}
 \bar ":|." \break
 % 2nd set
 {<<c,4 c'>> <<e, e'>> <<e, e'>> <<b, b'>>}
 {<<a,4 a'>> <<e, e'>> <<f, f'>> <<d, d'>>}
 {<<g,4 g'>> <<d, d'>> <<c c'>> <<e, e'>>}
 {<<e,4 e'>> <<b, b'>> <<a, a'>> <<e, e'>>} \break
 {<<g g'>> <<e, e'>> <<g, g'>> <<d, d'>>}
 
 \time 6/4
 {<<c,4 c'>> <<e, e'>> <<g, g'>> <<gis, gis'>> <<f, f'>> <<c, c'>>}
 

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