
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 244.32" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "In dich hab ich gehoffet, Herr (1)" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key bes \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        bes4 |
        bes4 f' f es8 d |
        c4 d es8 d c4 |
        bes4\fermata bes c d |
        es4 c f g |
        f4\fermata d4 d8 es f4 |
        es4 d8 c bes c d c |
        c4\fermata d bes8 c d4 |
        es4\fermata d c d |
        es4\fermata d c bes |
        f'4. es8 d4 es8 d |
        c2 bes4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        f4 |
        g4 a8 bes c4 bes8 a |
        g4 f bes a |
        f4 g fis f |
        es8 f g4 f4. e8 |
        a4 a g f |
        c'4 bes d, g |
        f4 f g8 a b4 |
        c4 bes! bes aes |
        g4 f f8 es d es |
        f8 g a2 g4 |
        g4 f8 es d4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key bes \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 |
        d8 es f4 f g8 f |
        es4 f bes, f'8 es |
        d4 es es d |
        g,4 g8 a bes c d c |
        c4 c bes8 c d es |
        f4 f g bes, |
        a4 bes8 a g4 f |
        g4 g'8 f es4 f |
        bes,4 bes a! bes |
        c2. bes4 |
        bes4 a f
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        bes8 a |
        g4 d a' bes4 ~ |
	bes4 aes4 g8 es f4 |
        bes,4\fermata es a, b |
        c8 d es4 d8 c bes c |
        f4\fermata fis g aes |
        a!4 bes8 a g f e4 |
        f4\fermata bes, es d |
        c4\fermata g'4 aes8 g f4 |
        es4\fermata bes f' g |
        a8 g f4 fis g8 f |
        e4 f bes,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "118." }
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

