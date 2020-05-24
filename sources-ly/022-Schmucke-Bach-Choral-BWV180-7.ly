
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 180.7" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Schmücke dich, o liebe Seele" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
	R1 |
	R1 |
	\tempo 4 = 34 r2 \tempo 4 = 78 r2 |
	R1 |
	r2 \tempo 4 = 34 r2 \tempo 4 = 78 | } %fin du repeat
	R1 |
	R1 |
	\tempo 4 = 34 r2 \tempo 4 = 78 r2 |
	R1 |
	r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
	R1 |
	r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
	R1 |
	R1 |
	\tempo 4 = 34 r1 
	}

  upper = {
	\time 4/4
	\key es \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
	g4 f es f |
	g8 aes bes4 aes2 |
	g2\fermata bes4 g |
	aes g8 f es f g4 |
	f2 es2\fermata | } %fin du repeat
	bes'4 c8 d es4 es |
	d8 c bes c c2 |
	bes2\fermata bes4 c8 d |
	es4 es d8 c bes c |
	c2 bes\fermata |
	f4 g aes aes |
	g8 bes aes g f4 f\fermata |
	bes4 g aes g8 f |
	es8 f g4 f2 |
	es1\fermata |
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
	es4 d c bes |
	bes es ~  es d |
	es2 f4 es |
	es4 es8 d c d es4 ~  |
	es4 d bes2 | } %fin du repeat
	g'4 f es8 f g4 |
	g4 d g f8 es |
	d2 es4 es8 f |
	g4 g f f8 g |
	f8 es16 d es4 d2 |
	d4 es d8 es f4 |
	es8 g f es d4 d |
	d4 es ~  es8 d es d |
	c8 d es4 ~  es d |
	bes1 |
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key es \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
	bes4 bes8 aes g4 f |
	es8 f g4 f8 es f4 |
	es2 bes'4 bes |
	c4 bes c bes |
	bes8 aes16 g aes4 g2 | }%fin du repeat 
	es'4 a,8 b c4 c |
	bes!8 a bes4 ~ bes a!4 |
	bes2 g4 aes |
	bes8 a bes c d es f bes, |
	bes4 a bes2 |
	bes4 bes aes8 g f4 |
	bes4 c d8 c bes4 |
	bes4 bes aes bes |
	c4 bes bes8 aes16 g aes4 |
	g1 |
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
	es4 bes c d |
	es4 g,8 aes bes2 |
	es,2\fermata d'4 es |
	c8 d es4 aes, g8 aes |
	bes2 es,\fermata | } % fin du repeat
	es'4 d c8 d es f |
	g4. f8 es4 f |
	bes,2\fermata es4 aes, |
	g8 f g a bes c d es |
	f4 f, bes2\fermata |
	bes'4 aes!8 g f4 es8 d |
	es4 aes, bes bes\fermata |
	g4 c f, g |
	aes4 g8 aes bes2 |
	es,1\fermata |
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "22." }
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

