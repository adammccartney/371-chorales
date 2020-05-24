
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 361" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Jesu, meines Herzens Freud'" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 40 r1 |
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
        d4 d8 es f es d4 |
        c4. c8 c2\fermata |
        d4 es8 d c4. bes8 |
        bes2\fermata a8 g a bes |
        c8 bes a4 g4. g8 |
        g2\fermata a4 bes8 a |
        g4. f8 f2\fermata |
        d'4 d8 es f4 es8 d |
        c4. c8 c2\fermata |
        d4 es8 d c4. bes8 |
        bes2\fermata es8 d es f |
        d8 c d es c4.\trill bes8 |
        bes1\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        f4 g f bes8 a |
        g4 f8 e f2 |
        f4 es8 f g4 f16 es d es |
        d2 c4 f |
        f4 f f8 e d4 |
        e2 e4 d |
        d4 c c2 |
        c4 bes c f |
        g8 f g4 f2 |
        f4 es8 f g4 a |
        g2 g4 f |
        f4 bes bes a |
        f1 |
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
        bes8 a bes c d c bes4 |
        bes4 a8 g a2 |
        bes4 bes bes a |
        f2 f4 c' |
        c4 c c c8 b |
        c2 a8 g f4 |
        f4 e a2 |
        a'4 g f! bes, |
        es4. es8 es2 |
        d8 c bes4 bes a8 d |
        d2 c4 c |
        c4 bes g' f8 es |
        d1 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        bes4 g d g8 f |
        e8 d c4 f2\fermata |
        bes8 a g f es4 f |
        bes,2\fermata f'8 e f g |
        a8 g a bes c4 g |
        c,2\fermata cis4 d8 c |
        bes4 c f2\fermata |
        fis4 g a bes |
        bes8 a bes g a2\fermata |
        bes8 a g f e4 fis |
        g2\fermata c8 bes a f |
        bes8 a g f es4 f |
        bes,1\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "264." }
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

