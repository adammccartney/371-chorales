
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

  \header {
      opus = \markup { \bold "BWV 153.1" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Ach Gott, vom Himmel sieh' darein" }
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
	r4 r4 \tempo 4 = 30 r4
	}

  upper = {
	\time 4/4
	\key e \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta2 {
	b4 |
	c4 b a e' |
	e8 d c4 b\fermata d |
	c4 b a b8 c16 d |
% \break
	c4 b a\fermata } %fin du repeat
	a4 |
	b8 a g4 fis e8 fis |
	g4 a b\fermata g |
	a8 b c4 b c8 b |
	a4 gis a\fermata a |
	e'4 c d e |
	d4 c b\fermata
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta2 {
	gis4 |
	a4 gis a gis8 a |
	b4 e,8 fis! gis4 gis |
	a4 gis a8 g f4 |
	e2 e4 } %fin du repeat
	d4 |
	d8 dis e4 dis e8 dis! |
	e8 g fis e dis4 b |
	a4 a' gis a |
	e4 e e e |
	e4 e f g |
	fis!8 gis a4 e
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

  lower = {
	\time 4/4
	\key e \minor
	\clef bass
	\partial 4
	\voiceOne
	<< {
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' { 
	\repeat volta2 {
	e4 |
	e4 d e d8 c |
	b4 c8 d e4 f |
	e4 e8 d c4 d |
	gis,8 a4 gis8 c4 } %fin du repeat
	a4 |
	g8 a b4 b b8 a |
	b4 c fis, e'8 d |
	c8 d e4 e e8 d |
	c4 b c c |
	b4 a a bes |
	a8 e fis!4 gis
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta2 {
	e4 |
	a4 b c b8 a |
	gis4 a e\fermata b |
	c8 d e4 f e8 d |
	e2 a,4\fermata } %fin du repeat 
	fis'4 |
	g8 fis e4 b'8 a g fis |
	e8 d c4 b\fermata e |
	f4 c8 d e4 a,8 b |
	c8 d e4 a,\fermata a' |
	gis4 a8 g f e d cis |
	d4 dis e\fermata
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "3." }
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

