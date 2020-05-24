
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 410" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Sei gegrüßet, Jesu gütig" }
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
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r4 \tempo 4 = 30 r4 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 40 r1 |
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
        g4 a bes bes |
        c4 bes a a\fermata |
        bes4 c d d |
        es4 d8 c c2 |
        bes2\fermata d4 c |
        d4 d c bes |
        c4 c\fermata c d |
        es4 es d c8 d |
        d2 c2\fermata |
        g4 a bes bes |
        c4 c d d\fermata |
        d4 d es d |
        c4 bes8 a a2 |
        g1\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 d d d |
        g8 fis g4 g fis! |
        g4 f! f f |
        es8 f g4 f2 |
        f2 f4 f |
        f4 bes bes8 a bes4 |
        bes4 a a g |
        g4 g g8 f es4 |
        aes4 g8 f es2 |
        es4 d d8 es f4 |
        g4 f f f |
        d4 g g8 c4 b8 |
        c8 fis, g4 g4 fis |
        d1 |
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
        bes4 a4 ~ a8 g16 fis! g4 |
        g8 a bes g d'4 d |
        d4 c4 ~ c8 bes16 a bes4 |
        bes4 bes bes a |
        d2 bes4 c4 ~ |
	c4 bes4 g'8 es f4 |
        f4 f f f |
        es8 d c4 b c |
        c4 b g2 |
        c4 c bes bes4 ~ |
	bes4 a4 bes bes |
        a8 c c bes ~ bes8 aes16 g f4 |
        g8 a bes es d4. c8 |
        b1 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g4 fis g4. f8 |
        es4 d8 c d4 d\fermata |
        g4 a bes4. a8 |
        g4 es f f, |
        bes2\fermata bes'4 a |
        bes8 a g f es c d bes |
        f'4 f,\fermata f' b, |
        c8 d es f g4 aes8 g |
        f4 g c,2\fermata |
        c'4 fis, g d |
        es!4 f bes,2\fermata |
        fis4 g c d |
        es4 d8 c d4 d, |
        g1\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "172." }
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

