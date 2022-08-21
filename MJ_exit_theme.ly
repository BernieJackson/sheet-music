
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
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 120
  %\set Staff.midiInstrument = #"harpsichord"

  \time 4/4
  %Var 3
  %\mark \markup { \italic \normalsize { Var. III } }
 
  e,8 c e g~ g e g c
  b f d b~ b f' a f
  d bes d f~ f g f d
  a f a c~ c d c d
  ees c ees aes~ aes ees g ees
  fis d a fis~ fis a c a 
  b g b d~ d e d e 
  f d b g~ g2
     \bar ":|."
  
  \clef bass
  
  aes8 f aes c~ c f c aes
  b g  d b~ b d g b
  aes f aes c~ c f c d
  ees c g ees~ ees  g c g
  bes aes ees c~ c ees aes g
  b g b d~ d b g d
  e c e g~ g e g c
  c1 

  
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
  \key c \major
  \numericTimeSignature
  \time 4/4
  %\set Staff.midiInstrument = #"harpsichord"

  %Var 3
  
 <<c,1 c'>>
 <<g, g'>>
 bes
 f
 aes
 d
 g,~
 g
 
 f
 aes
 f 
 c'
 aes
 <<b f>>
 c
 <<c c'>> 
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