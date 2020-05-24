
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 263" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Alles ist an Gottes Segen" }
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
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
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
        g4 g d' d |
        c4 d b g\fermata |
        b4 b a a |
        g4 a fis d\fermata |
        a'4 a b8 a g fis |
        e4. d8 d2\fermata |
        d'4 d d e |
        c4 d b g\fermata |
        b4 b a a |
        g4 a fis d\fermata |
        g4 a b8 c d c |
        b4 a8 g g2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 d d8 a'4 g8 |
        a4 a8 fis g4 d |
        g4 g g fis ~ |
	fis8 e16 d e8 cis d4 a |
        d4 d d d ~ |
	d8 b8 cis4 a2 |
        a'4 a gis8 a b4 ~ |
	b8 a16 g a4 g d |
        g4 g8 fis e cis fis4 ~ |
	fis8 e16 d e8 cis d4 a |
        d8 b fis'4 g8 fis g4 ~ |
	g4 fis4 d2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \major
	\clef bass
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        b4 b a b |
        e4 d d b |
        d4 d d d |
        d8 b a4 a fis |
        fis8 g a fis g4 a |
        a4. g16 fis fis2 |
        fis'4 fis f e |
        e4 d d b |
        d8 b e d cis a d4 |
        d8 b a4 a fis |
        g4 d' d8 c b c |
        d4 d8. c16 b2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g4 g fis g ~ |
	g4 fis8 d g4 g,\fermata |
        g8 a b c d e fis d |
        b8 e cis a d4 d,\fermata |
        d'8 e fis d g4 d |
        a'4 a, d2\fermata |
        d8 d'4 c!8 b a gis e |
        a8 g! fis d g4 g,\fermata |
        g'4 g g fis8 d |
        b8 e cis a d4 d,\fermata |
        b'8 e d c b a g e' |
        d4 d, g2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "128." }
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

