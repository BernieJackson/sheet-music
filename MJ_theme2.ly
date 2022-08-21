
  \header {
  %title = "Fantasia for Small Hands"
  %subtitle = "Op.1 No.2    (3 Sonatinas) #1- Sonatina (No.1) in DM"
  %composer = "BMB Johnson"
  tagline = "(c) 1992, 2021 by BMB Johnson"  % removed
}\version "2.18.2"
 
 \markup {
  \fill-line {
    \line { No Opus number}
    \center-column {
      \huge \smallCaps "Exit Theme"
     \italic from
      \smallCaps "It Happened on Lafayette Street (Audio Podcast)"
	  \italic " "
	  \italic \sans "Opening music for the Podcast/Audio book version of the Melody Jackson Books"  
	  \italic \sans ""
	  \italic " "
    }
    \line { BMB Johnson (Composer) }
  }
}
upper = \relative c'' {
  \clef treble
  \key a \major
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 120
  %\set Staff.midiInstrument = #"harpsichord"

  \time 4/4
  %Var 3
  %\mark \markup { \italic \normalsize { Var. III } }
 
   f,2.. gis8
   e4. gis8 f4. cis8
   f4. gis8 e4. gis8
   f4. gis8 f4. cis8

  
  %\tuplet 3/2 {  } \tuplet 3/2 {  }
  %\grace { a16 b16 }
  %\override Stem.direction = #DOWN a8
   
   %\repeat volta 2 { g'8 r4 e8 c r e, r4. c'8 e | }
  	%\alternative {
	%	{ e4. d \trill c r | }
	%	{ e4. d \trill c r | }
}

lower = \relative c {
  \clef bass
  \key a \major
  \numericTimeSignature
  \time 4/4
  %\set Staff.midiInstrument = #"harpsichord"

  %Var 3
  <<cis4 f gis cis>> <<cis, f gis cis>> <<cis, f gis cis>> <<cis, f gis cis>>
  <<cis, e gis bes>> <<cis, e gis bes>> <<cis, f gis cis>> <<cis, f gis cis>>
  <<cis, f gis cis>> <<cis, f gis cis>> <<cis, e gis bes>> <<cis, e gis bes>> 
  <<cis, f gis cis>> <<cis, f gis cis>> <<cis, f gis cis>> <<cis, f gis cis>>
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