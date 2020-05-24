
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 194.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Wie nach einer Wasserquelle" }
                     \line { \italic "old: Jesu, deine tiefen Wunden" }
                 } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 | } %fin du repeat
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key bes \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        bes4 c d c |
        bes4 a g f\fermata |
        bes4 c d es |
        d4 c bes2\fermata | } %fin du repeat
        d4 es f es |
        d4 c d2\fermata |
        f4 f g f |
        es4 d c2\fermata |
        d8 es f4 es d |
        bes4 c d2 |
        bes2\fermata d4 f |
        es4 d c d |
        c2 bes2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        f4 f f4. e8 |
        d4 c8 d f e f4 |
        d4 f f f |
        f4 f f2 | } %fin du repeat
        bes4 bes a g8 a |
        bes4 a bes2 |
        bes4 bes bes a |
        g4 f f2 |
        f4 bes8 aes g4 f |
        g8 fis g4 ~ g8 fis!16 e fis4 |
        d2 g4 aes |
        g4 d8 es f4 f |
        f2 f2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key bes \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 a bes8 a g4 |
        f8 g a8. bes16 c8 g a4 |
        bes4 a bes c |
        c8 bes bes a d2 | } %fin du repeat
        f4 g c,8 d es4 |
        f4 f f2 |
        d4 d es c |
        bes4 bes a2 |
        bes8 c d4 ~ d8 c4 bes8 ~ |
	bes8 a8 g a bes a16 g a4 |
        g2 bes4 bes |
        bes4 bes a bes4 ~ |
	bes8 a16 g a4 d2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        bes4 f bes, c |
        d8 e f4 c'8 c, f4\fermata |
        g4 f8 es d c bes a |
        bes4 f bes2\fermata | } %fin du repeat
        bes'8 a g4 f c |
        d8 es f4 bes,2\fermata |
        bes8 c d bes es d es f |
        g8 a bes4 f2\fermata |
        bes4 bes, c d |
        es4 es d2 |
        g2\fermata g8 f es d |
        es8 f g f es d c bes |
        f'2 bes,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "256." }
	\new Staff = "upper" \upper
	\new Staff = "lower" \lower
	>>

    \layout {
%	ragged-last = ##f
	   }

         } % fin de score

  \score {
    \unfoldRepeats { << \guidemidi \upper \lower >> }
    \midi {
    \context {
     \Staff
      \remove "Staff_performer"
               }

     \context {
      \Voice
       \consists "Staff_performer"
                }

     \context { 
      \Score
      tempoWholesPerMinute = #(ly:make-moment 78 4)
		}
	    }
	}

