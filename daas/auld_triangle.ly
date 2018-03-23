\version "2.18.2"

\header {
  title = "Lament For Brendan Behan/The Auld Triangle"
  composer = "Ciarán Bourke, Dicky Shannon"
}

global = {
  \key c \minor
  \time 4/4
  \tempo 4 = 68
}

chordNames = \chordmode {
  \global
}

melody = \relative c'' {
  \global
}

verse = \lyricmode {
}

right = \relative c'' {
  \global
}

left = \relative c' {
  \global
}

leadSheetPart = <<
  \new ChordNames \chordNames
  \new Staff { \melody }
  %\addlyrics { \verse }
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

\markup {
  \column{

    \line{ Word has come from Dublin City, }
    \line{ She's lost her sweet angry voice. } 
    \line{ Born with a spirit his flesh could not contain. }
    \line{ Brendan Behan is dead. } 
    \line{ " " }
    \line{ No stranger to life,  }
    \line{ He lived right enough.  }
    \line{ No stranger to the glass in his hand.  }
    \line{ No stranger to the cause.  }
    \line{ He fought for all his life.  }
    \line{ Brendan Behan is dead.  }
    \line{ " " }
    \line{ A hungry feelin' came over me stealin', } 
    \line{ While the mice were feeding in my prison cell.  }
    \line{ And the auld triangle went jingle jangle,  }
    \line{ All along the banks of the Royal Canal. }
    \line{ " " }
    \line{ On a fine spring evening,  }
    \line{ As I lay dreaming,  }
    \line{ And the lag was weeping,  }
    \line{ For his gal, Sal.  }
    \line{ And the auld triangle went jingle jangle,  }
    \line{ All along the banks of the Royal Canal.  }
    \line{ " " }
    \line{ And the wind was sighing,  }
    \line{ As the day was dying,  }
    \line{ And the lag still lay crying in his prison cell. }
    \line{ And the auld triangle went jingle bloody jangle, } 
    \line{ All along the banks of the Royal Canal.  }
    \line{ " " }
    \line{ In the women's prison,  }
    \line{ There are seventy women.  }
    \line{ And it wish it was with them that I did dwell.  }
    \line{ Then that auld triangle could go jingle bloody jangle,  }
    \line{ All along the banks of the Royal Canal.  }
    \line{ " " }
    \line{ Ireland has lost her sweet angry voice. }
    \line{ No longer his poems of fine design, }
    \line{ Will ring out in Gaelic,  }
    \line{ Or sound through the Main. }
    \line{ Brendan Behan is dead. }
  }
}