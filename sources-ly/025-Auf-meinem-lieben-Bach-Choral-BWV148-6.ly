
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 148.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Auf meinen lieben Gott" }
                     \line { \italic "old: Wo soll ich fliehen hin" }
                 } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	r4 |
	R1 |
	\tempo 4 = 34 r2 \tempo 4 = 78 r2 |
	R1 |
	\tempo 4 = 34 r2 \tempo 4 = 78 r2 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	R1 |
	r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
        \key c \minor %f \dorian => es \major % f aeolien => aes \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	f4 |
	f4 g aes bes |
	c2\fermata r4 c4 |
	c4. bes8 aes4 bes |
	g2\fermata r4 g4 |
	aes4 bes c c |
	bes2 c4\fermata c |
	aes4 bes c des8 es |
	c4 bes8 aes aes4\fermata c |
	es4 c c c |
	bes2 bes4\fermata bes |
	c4. bes8 aes4 bes8 aes |
	g2 f4\fermata
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	c4 |
	c4 d8 e f e f g |
	e2 r4 es |
	es8 f g4 ~ g8 f e f |
	e!2 r4 e!4 |
	f4 es! es f |
	f4 es es es |
	f4 f8 g aes4 aes |
	aes4 g es aes |
	bes4 aes aes aes |
	aes4 g8 f g4 g |
	g8 f e4 f f |
	f4 e c
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key c \minor %f \dorian => es \major % f aeolien => aes \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	aes8 bes |
	c4 bes c des |
	g,2 r4 aes4 |
	aes4 g c des |
	c2 r4 c4 |
	c8 des c bes aes4 aes ~ |
	aes4 g aes aes |
	aes4 des c f |
	es4 des8 c c4 es |
	es4 es f es |
	f8 es d!4 es es8 des |
	c4 c c bes8 c |
	des4 c8 bes a4
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	f8 g |
	aes4 g f des |
	c2\fermata r4 aes8 bes |
	c8 d! e4 f bes, |
	c2\fermata r4 c4 |
	f4 g aes8 g f es |
	des4 es aes,\fermata aes |
	des8 c bes4 f'8 es des!4 |
	es2 aes,4\fermata aes' |
	g4 aes8 g f es des c |
	d!4 bes es g8 f |
	e8 d c4 f8 es des c |
	bes4 c f,\fermata
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "25." }
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

