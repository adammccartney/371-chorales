
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f

	}

  \header {
      opus = \markup { \bold "BWV 269" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Aus meines Herzens Grunde" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
 	\repeat volta 2 { 
	r4 |
	R2. |
	R2. |
	R2. |
	\tempo 4 = 34 r2 \tempo 4 = 78 r4 |
	R2. |
	R2. |
	\tempo 4 = 34 r2 \tempo 4 = 78 } %fin du repeat
	r4 |
	R2. |
	R2. |
	\tempo 4 = 34 r2 \tempo 4 = 78 r4 |
	R2. |
	R2. |
	r2. |
	\tempo 4 = 34 r2 \tempo 4 = 78 r4 |
	R2. |
	R2. |
	R2. |
	\tempo 4 = 34 r2 \tempo 4 = 78 r4 |
	R2. |
	R2. |
	\tempo 4 = 34 r2 
	}

  upper = {
	\time 3/4
	\key g \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 { 
	g4 |
	g2 d'4 |
	b4. a8 g4 |
	g4. a8 b4 |
	a2\fermata b4 |
	d2 c4 |
	b4 a2 |
	g2\fermata } %fin du repeat
	b4 |
	b4 c d |
	d4. c8 b4 |
	a2\fermata g4 |
	b2 c4 |
	d2 c4 |
	b2. |
	g2\fermata b4 |
	d2 c4 |
	b2 a4 |
	g4. a8 b4 |
	a2\fermata b4 |
	d2 c4 |
	b4 a2 |
	g2\fermata
	\bar "|."
	} % fin de relative
	}

	\context Voice= "1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 { 
	d4 |
	d4 e d |
	d2 b4 |
	e8 d e fis g4 |
	fis2 g4 |
	d4 e fis |
	g2 fis4 |
	d2 } %fin du repeat
	g4 ~ |
	g8 fis8 e fis g4 ~ |
	g8 a8 g fis g4 |
	fis2 e4 |
	e4 fis8 g a4 |
	a4 g4. fis8 |
	g2 f4 |
	e2 g4 |
	a4. g8 fis4 |
	g2 fis4 ~ |
	fis8 e8 e fis g4 |
	fis2 g4 |
	a2 g8 fis |
	g2 fis4 |
	d2
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

  lower = {
	\time 3/4
	\key g \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 { 
	b4 |
	b4 c8 b a4 |
	g4 fis g |
	c8 b c4 d |
	d2 d4 |
	a4 b c |
	d4 e d8 c |
	b2 } %fin du repeat 
	d4 |
	d4 c b8 a |
	b8 c d4 d |
	d2 b4 |
	g4 b e |
	d2 d4 |
	d2. |
	c2 d4 |
	d8 c b4 c |
	d2 d8 c |
	b4 c d |
	d2 d4 |
	d2 e4 |
	e2 d8 c8 |
	b2
	\bar "|."
	} % fin de relative
	}
	\context Voice= "1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 { 
	g4 |
	g'4 e fis |
	g4 d e |
	c4 b8 a8 g4 |
	d'2\fermata g,4 |
	fis4 g a |
	b4 c d |
	g,2\fermata } %fin du repeat 
	g4 |
	g4 a b |
	b4. a8 g4 |
	d'2\fermata e4 ~ |
	e4 d4 c |
	b4. c8 d4 |
	g,8 a b4 g |
	c2\fermata g4 |
	fis4 g a |
	b4 g d' |
	e8 d c b a g |
	d'2\fermata g4 ~ |
	g4 fis4 e ~ |
	e8 d8 c4 d |
	g,2\fermata
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "1." }
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
   \Score
   tempoWholesPerMinute = #(ly:make-moment 78 4)
		}
	  }
	}

