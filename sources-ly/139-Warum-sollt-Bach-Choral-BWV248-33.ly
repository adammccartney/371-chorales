
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 248.33" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Warum sollt ich mich denn grämen" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key g \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 g a g |
        a8 b c4 c b |
        c2\fermata d4 e |
        c2\fermata b8 c d4 |
        a2\fermata d4 d |
        c4 b8 a a2 |
        g2\fermata g4 g |
        a4 g a8 b c4 |
        c4 b c2\fermata |
        d4 e c2\fermata |
        b8 c d4 a2\fermata |
        d4 d c b8 a |
        a2 g2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 e d d |
        e4 f g2 |
        g2 b8 a b4 |
        a2 g4 g |
        fis2 fis4 g |
        g4 g g fis |
        d2 e4 b8 cis |
        d8 c! b4 c8 d c d |
        e4 d c2 |
        fis4 gis e2 |
        g!4 fis8 g a2 |
        g4 g8 fis g a d, e |
        fis8 g4 fis8 d2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        b4 c fis, g |
        c4 c8 d e4 d |
        e2 g8 f e4 |
        e2 e4 d |
        d2 a4 b |
        c4 d e d8 c |
        b2 c4 g |
        fis4 g g8 f! g a |
        g4 e' e2 |
        d8 c b4 a2 |
        g8 a b g d'2 |
        b8 c d4 e8 fis g4 |
        d8 c16 b c4 b2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        g'4 c,2 b4 |
        a4 aes g2 |
        c2\fermata g'4 gis |
        a2\fermata e4 b8 c |
        d2\fermata d4 g8 fis |
        e4 d c d |
        g,2\fermata c8 d e4 |
        d8 e f4 e8 d e fis |
        g4 gis a2\fermata |
        b4 e, a2\fermata |
        e4 d8 e fis2\fermata |
        g8 a b4 ~ b8 a b c |
        d4 d, g2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "139." }
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

