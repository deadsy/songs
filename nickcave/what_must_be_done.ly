\version "2.18.2"

\header {
  title = "What Must Be Done"
  composer = "Nick Cave and Warren Ellis"
}

global = {
  \time 3/4
  \key c \minor
  \tempo 4=72
}

right = \relative c' {
  \global
  <c ees g>4 g'2 |
  <ees g bes>4 \arpeggio <ees g>2 |
  <bes d f>4 <d f>2 |
  <c f aes>4 <f aes>2 |
  
  <c ees g>4 g'2 |
  <ees g bes>4 \arpeggio g2 |
  r8 bes,8( d4 f4) |
  r4 c4( f4) |

  r4 <ees g>8( c8 <ees g>8 c8) \bar ".|:" |
  
  
}

left = \relative c' {
  \global
  <c,, c'>2. |
  <ees ees'>2. |
  <bes bes'>2. |
  <f' f'>2. |
  
  <c c'>2 c'4 |
  <ees, ees'>2. |
  <bes bes'>2. |
  <f' f'>2. |
  
  <c c'>2. |
  <ees ees'>2. |
  <bes bes'>2. |
  f'2. |
  
}

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
    \pianoPart
  >>
  \layout { }
  \midi {
    \tempo 4 = 72
  }
}
