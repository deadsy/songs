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

theChords = \chordmode {
  c2.:m |
  ees2. |
  bes2. |
  f2.:m |
  c2.:m |
  ees2. |
  bes2. |
  f2.:m |
  c2.:m |
  
  \repeat volta 2 {
    ees2. | 
    bes2. | 
    f2.:m |
    c2.:m |
    ees2. |
    bes2. |
    f2.:m |
  }
  \alternative {
    {c2.:m |}
    {c2.:m |}
  }
  
  \repeat volta 2 {
    ees2. |
    bes2. |
    f2.:m |
    c2.:m |
    ees2. |
    bes2. |
    f2.:m |
  }
  \alternative {
    {
      c2.:m |
    }
    {
      c2.:m |
      s2. |
      ees2. |
      s2. |
      s2. |
    }
  }  
  

}

right = \relative c' {
  \global
  <c ees g>4 g'2 |
  <ees g bes>4 \arpeggio <ees g>2 |
  <bes d f>4 <d f>2 |
  <c f aes>4 <f aes>2 |
  <c ees g>4 g'2 |
  <ees g bes>4 \arpeggio g2 |
  r8 bes,8( d4 f) |
  r4 c( f) |
  r4 <ees g>8( c <ees g> c) |
  \repeat volta 2 {
    <ees g bes>4 \arpeggio <g bes> <g bes> |
    <d f>8( bes d bes ees d) |
    aes8( f aes f c' aes) |
    <ees' g>8( c <ees g> c <ees g> c) |
    <ees g bes>4 <g bes> <g bes>|
    <d f>8( bes <d f> bes <d f> bes) |
    <f' bes>8 r <f aes> r <g d> r |
  }
  \alternative {
    {<ees g>8( c <ees g> c <ees g> c) | }
    {<ees g>8( c <ees g> c <ees g> c) | }
  }
  \repeat volta 2 {
    <ees g bes>4 g8 ees c g' |
    <d f>8( bes d bes ees d) |
    aes8( f aes f c' aes) |
    <ees' g>8( c <ees g> c <ees g> c) |
    <ees g bes>4 <g bes> <g bes> |
    <d f>8( bes <d f> bes <f' bes> d) |
    <f bes>8 r <f aes> r <d g> r |
  }
  \alternative {
    {<ees g>8( c <ees g> c <ees g> c) | }
    {
      <ees g>8( c <ees g> c <ees g> c) |
      g8( bes c g bes c) |
      ees,8( g ees g bes g) |
      aes4 aes2 |
      r2. |
    }
  }
  \bar "|." 
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
  \repeat volta 2 {
    <ees ees'>2. |
    <bes bes'>2. |
    f'2. |
    <c c'>4. c'4 c8 |
    <ees, ees'>2. |
    <bes bes'>2. |
    r8 d'' r bes r g |
  }
  \alternative {
    {<c, c,>2. |}
    {<c c,>4 <c c,>2 |}
  }
  \repeat volta 2 {
    r4 <c c,>2 |
    <bes bes,>4 <bes bes,>2 |
    f4 f2 |
    <c c'>4 <c c'>2 |
    <ees ees'>4 <ees ees'>2 |
    <bes bes'>4 <bes bes'>2 |
    r8 d'' r bes r g |
  }
  \alternative {
    { <c, c,>4 <c c,>2 |}
    {
      c4( ees2) |
      r4 c2 |
      ees,4 ees2 |
      aes4 aes2 |
      <c c,>2. |
    }
  }
  \bar "|." 
}

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  
   \new ChordNames { \theChords }
  
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
