\version "2.18.2"


\header {
  title = "War Song"
  composer = "P. McDermott, R. Fidler, T. Ferguson"
}

global = {
  \key a \major
  \time 4/4
  \tempo 4 = 100
}

chordNames = \chordmode {
  \global
  % Chords follow here.
}

melody = \relative c'' {
  \global
}

verse = \lyricmode {
  % Lyrics follow here.
  
}

right = \relative c'' {
  \global
  % Music follows here.
  
}

left = \relative c' {
  \global
  % Music follows here.
  
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
    \tempo 4=100
  }
}

\markup {
  \column{
    \line{ With a downwind blast}
    \line{ From his doughy arse}
    \line{ Like a lance of fire}
    \line{ He shot up the mast}
    \line{ As he mumbled blasphemous epitaphs}
    \line{ I am the sailor!}
    \line{ " " }

    \line{ And the captain cried with a mighty heave-ho}
    \line{ Enemy sighted on the starboard bow! }
    \line{ Load your cannons and let 'em go,}
    \line{ For God is on our side, boys.}
    \line{ " "}

    \line{ In the dust and sand}
    \line{ Of a foreign land}
    \line{ With hands a-fire} % panzer fire?
    \line{ He buried his friend}
    \line{ He beat his brow}
    \line{ As he foully said,}
    \line{ I am the soldier.}
    \line{ " " }

    \line{ And the private laughed as he reached the bluff}
    \line{ His gun barrel smoking, Enough's enough,}
    \line{ We've done more damage than old MacDuff}
    \line{ And God is full of pride, boys.}
    \line{ " " }

    \line{ He flew through the flak}
    \line{ On the first attack}
    \line{ A bomb bay open}
    \line{ On a missile's back}
    \line{ Here's the payload,}
    \line{ He crudely spat,}
    \line{ I am the airman.}
    \line{ " " }

    \line{ And the general sighed, This is our last stand,}
    \line{ Let every man say Amen.}
    \line{ For we'll not see daylight again}
    \line{ And tonight we meet our God, boys.}
    \line{ " " }

    \line{ Well, the airman plunged into the pine} % pyre?
    \line{ And the sailor drowned in the briny brine}
    \line{ And the soldier in haste put his foot on a mine}
    \line{ And it comes to all in time, boys}
    \line{ For on the day they died, boys}
    \line{ God was on the other side, boys}
  }
}