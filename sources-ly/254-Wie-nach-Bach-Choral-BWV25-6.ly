
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 25.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Wie nach einer Wasserquelle" }
                     \line { \italic "old: Weg, mein Herz, mit den Gedanken" }
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
	\key c \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        c4 d e d |
        c4 b a g\fermata |
        c4 d e d8 e16 f |
        e4 d8. c16 c2\fermata | } %fin du repeat
        e4 f g f |
        e4 d e2\fermata |
        g4 g a g |
        f4 e d2\fermata |
        e4 g f e8 d |
        c4 d e2 |
        c2\fermata e4 g |
        f4 e d c |
        d2 c2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 g g g |
        a4 d, d d |
        g4 a8 b c g g4 |
        g4 g g2 | } %fin du repeat
        g4 a8 bes16 c bes4 a |
        g4 f8 a16 gis a2 |
        g!4 c c b |
        a4 g8 fis g2 |
        g4 c8 b a b c4 |
        a4 a b e, |
        e2 g8 a bes4 |
        a8 b! c4 g g |
        g2 g2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key c \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e4 b c d |
        e8 fis g4 g8 fis b,4 |
        c4 f g8 c, d4 ~ |
	d8 c8 c b e2 | } %fin du repeat
        c4 c c c8 d |
        e8 a, a b cis2 |
        c!8 d e4 f8 e d4 |
        c4 c b2 |
        c8 d e4 f g8 g, |
        a8 e' d c b2 |
        a2 bes4 e, |
        f4 g8 a b4 c |
        c4 b e2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        c4 g' c b |
        a4 g d g\fermata |
        e4 d c b |
        c4 g c2\fermata | } %fin du repeat
        c'4 a e f |
        cis4 d a2\fermata |
        e'4 c f g |
        a8 b c4 g2\fermata |
        c4 c, d e |
        f4 fis g gis |
        a2\fermata g!4 c, |
        d4 e8 f g f e c |
        g2 c2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "254." }
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

