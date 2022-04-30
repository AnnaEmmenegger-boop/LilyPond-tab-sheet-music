\version "2.20.0"

\header {
  title = "Example Notes"
  composer = "Anna Emmenegger"
}

emptyStrings = {
  e, a, d g b e'
}

\new StaffGroup <<
  \new Staff {
    \time 4/4
    \emptyStrings
  }
  \new TabStaff {
    \emptyStrings
  }
>>
