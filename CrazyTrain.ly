\version "2.20.0"

\header {
  title = "Crazy Train"
  composer = "Ozzy Osbourne"
}

intro = {
  <e''\6 a''\5> <ees''\6 gis''\5> <d''\6 g''\5> <cis''\6 fis''\5> <c''\6 f''\5> <b'\6 e''\5> 
  <bes'\6 ees''\5> <a'\6 d''\5> <gis'\6 cis''\5> <g'\6 c''\5> <fis'\6 b'\5> <f'\6 bes'\5>
  <e'\6 a'\5> <ees'\6 gis'\5> <d'\6 g'\5> <cis'\6 fis'\5> <c'\6 f'\5> <b\6 e'\5>
  <bes\6 ees'\5> <a\6 d'\5> <gis cis'> <g c'> <fis b> <f bes>
  \bar "|."
}

riff = {
  fis8 fis cis' fis
  d' fis cis' fis
  fis d' cis' d'
  fis d' cis' a
  \bar "|."
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
    \set TabStaff.restrainOpenStrings = ##t
    \override StringNumber #'transparent = ##t
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
    \set TabStaff.restrainOpenStrings = ##t
    \override StringNumber #'transparent = ##t
    \riff
  }
>>
