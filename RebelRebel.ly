\version "2.20.0"

\header {
  title = "Rebel Rebel"
  composer = "David Bowie"
}

intro = {
  <a d'>4( <d'' e''> d'') <cis'' a'>8 <gis' b' e''>
  r <gis' b' e''> r e cis''( b') gis' e'
}

riff = {
  \repeat volta 2 {
    d'4( e'' d'') a'8 <gis' b' e''>
    r <b e' gis' b' e''> r e cis''( b') gis' e'
    d'4( e'' d'') a'8 <gis' b' e''>
    r <gis' b' e''> r e cis''( b') gis' e'
  }
}

bridge = {
  <e'' cis'' a' e' a>4 <cis'' a' e' a> <e'' cis'' a' e' a>8 <e'' cis'' a' e' a>4
  <d' a'>16 <d' a'>
  <fis'' d'' a' d'>4. <d'' a' d'> <g' d' a>8 <b'\3 fis' b>16 <b'\3 fis' b>
  <fis'' d'' b' fis' b>2 <fis' b>8 <fis' b> gis( fis)
  <e b e' gis' b' e''>8 <e b e' gis' b' e''> <e b e' gis' b' e''> <e b e' gis' b' e''>
  <e b e' gis' b' e''> <e b e' gis' b' e''> <d' a'>16 <d' a'> |
}

\new StaffGroup <<
  \override Score.NonMusicalPaperColumn.padding = #3
  \new Staff {
    \time 4/4
    \intro
  }
  \new TabStaff {
    \clef moderntab
    \set Staff.stringTunings = \stringTuning <e a d' g' b' e''>
    \intro
  }
>>

\new StaffGroup <<
  \override Score.NonMusicalPaperColumn.padding = #3
  \new Staff {
    \time 4/4
    \riff
  }
  \new TabStaff {
    \clef moderntab
    \set Staff.stringTunings = \stringTuning <e a d' g' b' e''>
    \riff
  }
>>

\new StaffGroup <<
  \override Score.NonMusicalPaperColumn.padding = #3
  \new Staff {
    \time 4/4
    \bridge
  }
  \new TabStaff {
    \clef moderntab
    \set Staff.stringTunings = \stringTuning <e a d' g' b' e''>
    \bridge
    }
>>
