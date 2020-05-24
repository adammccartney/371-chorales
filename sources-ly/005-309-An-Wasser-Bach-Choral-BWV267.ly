
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

  \header {
      opus = \markup { \bold "BWV 267" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "An Wasserflüssen Babylon" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta2 {
	r4 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
	r4 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	R1 |
	R1 |
	r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key g \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta2 {
	d4 |
	e4 d8 c b c d4 |
	c8 b c4 b\fermata a |
	b4 c d c8 b |
	a8 g a4 g\fermata } %fin du repeat
	g4 |
	a4 b c8 b a4 |
	b4 a g\fermata g8 a |
	b4 c d e |
\break
	b4 cis d\fermata b8 c |
	d4 e d8 c b4 |
	c2 b4\fermata e |
\break
	e4 e a, d |
	c4 b a\fermata c |
	b4 a g a8 g |
	f4 e d\fermata d |
	g4 a b4. c8 |
	d4 c8 b a4 b8 c |
	a2 g4\fermata
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta2 {
	g4 |
	g4 fis g fis |
	e8 g4 fis8 g4 a |
	g4 g g g |
	g4 fis d } %fin du repeat
	d4 |
	d8 e fis4 e4 ~ e8 d |
	d4 c b e |
	d4 e f e8 fis |
	g8 fis g a fis4 d |
	g4 g a b |
	b8 gis a4 gis b |
	a4 e8 c d e f4 |
	e4 d c a' |
	d,8 e f4 e8 d e4 ~ |
	e8 d4 cis8 d4 d8 c |
	b8 a g fis g4 g' |
	fis4 g g g ~ |
	g4 fis4 d
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

  lower = {
	\time 4/4
	\key g \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	b4 |
	c8 b a4 e' a,8 b |
	c8 e d4 d d |
	d4 g,8 a b g e'4 |
	a,8 b c4 b } %fin du repeat
	b4 |
	a4 d g, a ~ |
	a8 g4 fis8 g4 g |
	g4 g g g |
	g8 a16 b a4 a g _~ |
	g8 d'8 c b a4 e' |
	e2 e4 e8 d |
	c8 b a4 ~ a8 gis a b |
	gis8 a4 gis8 a4 e8 fis! |
	g!4 d'8 c! bes4 a |
	a4 g fis fis |
	g4 d' d e |
	d2 e8 d c4 |
	d8 e d c b4
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	g4 |
	c,4 d e fis8 g |
	a4 d, g\fermata fis |
	g8 fis e4 b c |
	d2 g,4\fermata } %fin du repeat
	g'4 |
	fis4 e8 d e4 fis |
	g4 d g,\fermata c |
	g'8 f e d c b c d |
	e4 a, d\fermata g8 a |
	b4 c fis, gis |
	a4 a, e'\fermata gis, |
	a8 b c a f'4 e8 d |
	e4 e, a\fermata a |
	b8 cis d2 cis!4 |
	d4 a d\fermata b |
	e4 d g8 fis e4 |
	b8 a g4 c8 b a4 |
	d8 c d4 g,\fermata
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "5." }
	\new Staff = "upper" \upper

	\new Staff = "lower" \lower
	>>

  \layout {
%	ragged-last = ##f
	\context {
	\Staff
	\override VerticalAxisGroup #'staff-staff-spacing =
	#'(('basic-distance . 10)
	(minimum-distance . 12)
	(padding . 1)
	(stretchability . 10))
	 }

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

