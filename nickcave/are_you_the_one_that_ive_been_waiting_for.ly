\version "2.18.2"

\header {
  title = "(Are You) The One That I've Been Waiting For?"
  composer = "Nick Cave"
}

global = {
  \key c \minor
  \time 4/4
  \tempo 4 = 68
}

chordNames = \chordmode {
  \global
  % Chords follow here.
  
}

melody = \relative c'' {
  \global
  s2. r4 \bar "||" |
  r1 |
  r1 |
  r8. bes,16 g'8 f16 f ees ees8. r4 |
  r8. bes16 g' f8. f16( ees8.) r4 |
  r8. bes16 g' f8 f16~ f8 ees f16 ees8. |
  r4 g8 f f16( ees bes8~ bes4) |
}

verse = \lyricmode {
  I felt you com -- ing girl
  as you drew near,
  I knew you'd find me 'cause I
  longed you here,
  Are you my destiny? Is this
  how you'll appear wrapped in a coat
  with the tears in your eyes?
  Well take that coat babe and
  throw it on the floor, are
  you the one that
  I've been waiting for?
}

right = \relative c'' {
  \global
  s2. r4 \bar "||" |
  c,8 g c g aes c d c |
  <d ees g c>4 \arpeggio c8 g aes c d c16 g |
  <g c ees>4 <c ees>8 g <c ees> g <g c ees> bes16 g | 
  <g bes ees>8 bes <g ees'> bes <g f'>  bes <bes ees g> <bes f'> |
  <aes c ees>8 bes <aes c> bes <aes c f>4 <aes c ees>8 bes | 
  <g ees'>8 bes <g ees'> bes <g f'> bes <bes ees g> <bes f'> | 
}

left = \relative c' {
  \global
  s2. r8. g16 \bar "||" |
  c,8 ees, f g  f ees d ees |
  r8 ees f g f ees d ees |
  c4. c8 c4. d8 |
  ees4. ees8 ees4 ees8 g |
  aes4. aes8 aes4 aes'8 bes, | 
  ees,4. ees8 ees4 ees8 g |
}

leadSheetPart = <<
  \new ChordNames \chordNames
  \new Staff { \melody }
  \addlyrics { \verse }
>>

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
    \leadSheetPart
    \pianoPart
  >>
  \layout { }
  \midi {
    \tempo 4 = 68
  }
}
