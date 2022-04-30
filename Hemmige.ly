\version "2.20.0"

\header {
  title = "Hemmige"
  composer = "Mani Matter"
}

noten = {
  \repeat volta 2 {
    \partial 8 b'8 |
    e'' g'' e'' g'' e'' g'' e'' b'
    cis''2 r4 r8 a'
    d'' e'' d'' e'' d'' e'' d'' a'
    b'2 r4 r8 gis'
    b' cis'' b' cis'' b' cis'' b' gis'
    a'2 r4 b'8 a'
  }

  \alternative {
    { gis'2 fis'4 e' b2 r4 r8 }
    { gis'2 fis'4 d' e'2 <e b e' gis' cis'' e''> }
  }
}

\new StaffGroup <<
  \new Staff {
    \time 4/4
    \noten
    \bar "|."
  }
  \new TabStaff {
    \clef moderntab
    \set Staff.stringTunings = \stringTuning <e a d' g' b' e''>
    \noten
    \bar "|."
  }
>>
