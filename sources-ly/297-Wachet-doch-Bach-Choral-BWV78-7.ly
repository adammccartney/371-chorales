
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 78.7" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line {"Wachet doch, erwacht, ihr Schläfer"}
                     \line { \italic "  old: Jesu, der du meine Seele"}
                 } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key g \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        d4 d a bes |
        c4 bes8 a a4 g\fermata |
        bes4 bes a g |
        fis4 g a2\fermata |
        d4 d a bes |
        c4 bes8 a a4 g\fermata |
        bes4 bes a g |
        fis4 g a2\fermata |
        a4 bes c a |
        bes4 a8 g g4 f\fermata |
        bes4 c d d |
        es4 d8 c c4 bes\fermata |
        d4 d c d |
        bes4 c d2\fermata |
        d4 d c bes |
        a4 a g2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 g a g |
        g4 g fis d |
        d4 es es8 d d c |
        c4 d d2 |
        d4 g fis g |
        g4 g fis d |
        d4 es es8 d d c |
        c4 d d2 |
        fis4 g g f |
        f4 f e c |
        f4 g8 a bes4 bes |
        bes4 bes a f |
        f4 f f8 es d4 |
        d4 g fis2 |
        g4 g a g |
        g4 fis d2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        bes8 c d4 d d |
        c8 d es4 d8 c bes4 |
        g4 g g8 fis g4 |
        a4 bes fis2 |
        bes8 c d4 d d |
        c8 d es4 d8 c bes4 |
        g4 g g8 fis g4 |
        a4 bes fis2 |
        d'4 d c c |
        bes8 c d4 c8 bes a4 |
        bes4 es f f |
        es8 f g4 f8 es d4 |
        bes4 bes a a |
        g8 bes a g a2 |
        bes8 c d4 es d |
        es4 d8 c b2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g8 a bes4 fis g |
        es4 c d g,\fermata |
        g'8 f es d c d es4 |
        a,4 g d'2\fermata |
        g,8 a bes c d4 g |
        es4 c d g,\fermata |
        g'8 f es d c d es4 |
        a,4 g d'2\fermata |
        d4 g8 f! e4 f8 es |
        d4 bes c f\fermata |
        d4 c bes bes'8 a |
        g4 es f bes,\fermata |
        bes8 c d es f4 fis |
        g8 f! es4 d2\fermata |
        g8 a bes4 fis g |
        c,4 d g,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "297." }
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

