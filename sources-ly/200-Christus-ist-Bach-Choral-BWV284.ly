
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 284" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Christus ist erstanden, hat überwunden" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
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
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key c \major
	\clef treble
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        c4 g a b |
        c2 c4\fermata g |
        c4 bes a2 |
        g2\fermata g4 a |
        bes4 c bes a |
\break
        g2\fermata g4 c |
        c4 b c2\fermata |
        c4 c d d |
        c4 bes a2\fermata |
        g4 a bes a |
\break
        g2\fermata bes4 c |
        d4 es8 d c2 |
        d2\fermata d4 c |
        d4 c bes! g |
        a4 b!4 c2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 g4 ~ g8 fis8 g4 |
        g4. f8 ~ f e8 e4 ~ |
	e8 fis8 g4 g fis! |
        d2 d8 es4 d8 ~ |
	d8 bes'!8 a g fis g4 fis8 |
        d2 e!8 f8 g4 |
        g4 g g2 |
        a4 a8 g f g a4 ~ |
	a4 bes8 g f2 |
        e4 e8 fis g4 ~ g8 fis!8 |
        g2 d8 bes'!8 ~ bes8 a8 |
        bes2 bes4 a |
        bes2 bes4. a8 |
        bes4 a g e! |
        f8 e d f e2 |
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
        e4 d c d |
        c8 bes a4 g c8 bes |
        c4 d es d8 c |
        bes2 bes4 c |
        bes8 g es'4 d4 ~ d8. c16 |
        bes2 c4 ~ c8 d |
        e8 d16 c d8 f8 ~ f8 e16 d16 e4\fermata |
        f4 f f8 e d e |
        f4 ~ f8 e c2 |
        c4 c d es8 d16 c |
        bes2 bes8 d f4 |
        f4 es8 f g es c f |
        f2 f4 f |
        f4 es8 d d4 c |
        c4 g g2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        c4 b a g8 f8 |
        e4 f c\fermata c'8 bes |
        a4 g c, d |
        g,2\fermata g'4 fis |
        g4 c, d d, |
        g2\fermata c8 d e f |
        g4 g, c2\fermata |
        f8 g f e d e f g8 |
        a8 f g c, f2\fermata |
        c'8 bes a4 g8 bes, c d |
        es2\fermata g4 f |
        bes8 a g f es c f4 |
        bes,2\fermata bes'4 f |
        bes8 a g fis g a bes! c8 |
        f,4 g c,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "200." }
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

