
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 408" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Schaut, ihr Sünder! Ihr macht mir große Pein" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r4 r4 \tempo 4 = 34 r2 \tempo 4 = 78 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key g \dorian % f \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 a bes g\fermata |
        r4 d'4 c bes |
        a4 g a2\fermata |
        bes4 c d bes\fermata |
        r4 d4 es d |
        c4 c bes2\fermata |
        d4 c bes g\fermata |
        r4 c c bes |
        a4 g f2\fermata |
        bes4 c d bes\fermata |
        r4 d4 c g8 a |
        bes4 a g2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 d d d |
        r4 g4. fis8 g4 ~ |
	g8 fis8 g g, d'2 |
        f!4 f f f |
        r4 bes4 ~ bes8 a bes4 |
        bes4 a f2 |
        f4. fis8 g4 d |
        r4 g4. f16 e! f4 ~ |
	f4 e4 c2 |
        g'4 a bes8 aes g4 |
        r4 g4 g g4 ~ |
	g4 fis4 d2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \dorian % f \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        bes4 a g bes |
        r4 bes4 c d |
        d4. c8 fis,2 |
        d'4 c bes d |
        r4 f4 es f |
        g4 f8 es d2 |
        bes4 c4 d bes |
        r4 c8 bes a4. g8 |
        a8 bes c bes a2 |
        d4 f f es |
        r4 f4 es bes8 c |
        d4. c8 b2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g4. fis8 g4 g,\fermata |
        r4 g4 a bes8 c |
        d4 es d2\fermata |
        d8 bes4 a8 bes4 bes'\fermata |
        r4 bes8 aes g4 f |
        es4 f bes,2\fermata |
        bes8 bes'4 a8 g4 g,\fermata |
        r4 e'!4 f d |
        c4 c f,2\fermata |
        g'4 f8 es d bes es!4\fermata |
        r4 b4 c8 d es4 |
        d4 d, g2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "171." }
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

