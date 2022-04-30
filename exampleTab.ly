\version "2.20.0"

\header {
  title = "Example Notes"
  composer = "Anna Emmenegger"
}

noten = {
  e8 a d'4 g'2 b'1 e''
}

\new StaffGroup <<
  \new Staff {
    \time 4/4
    \noten
  }
  \new TabStaff {
    \clef moderntab
    \set Staff.stringTunings = \stringTuning <e a d' g' b' e''>
    \noten
  }
>>
