
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

  \header {
      opus = \markup { \bold "BWV 311" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Es woll' uns Gott genädig sein (2)" }
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
	R1 |
	\tempo 4 = 44 r2 \tempo 4 = 88 r4 r4 |
	R1 |
	R1 |
	\tempo 4 = 44 r2. \tempo 4 = 88 } %fin du repeat
        r4 |
	R1 |
	r2 \tempo 4 = 44 r4 \tempo 4 = 88 r4 |
	R1 |
	r2 \tempo 4 = 44 r4 \tempo 4 = 88 r4 |
	R1 |
	r2 \tempo 4 = 44 r4 \tempo 4 = 88 r4 |
	R1 |
	r2 \tempo 4 = 44 r4 \tempo 4 = 88 r4 |
	R1 |
	R1 |
        \tempo 4 = 44 r2. 
	}

  upper = {
	\time 4/4
	\key fis \phrygian % d \major or b \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta2 {
	cis4 |
	d4 cis b cis8 d |
	e4 fis e d |
	cis2\fermata r4 e4 |
	d4 cis d b |
	a4 fis8 g a4 g |
	fis2.\fermata } %fin du repeat
        a4 |
	g4 fis e fis |
	d4 e fis\fermata cis' |
	d4 cis b cis8 d |
	e4 d cis\fermata fis |
	e8 d cis d e4 b |
	a4 g! fis\fermata e |
	a4 b cis8 d e4 |
	d4 cis b\fermata d |
	cis4 b a8 g fis g |
	a4 g fis2 ~ |
        fis2.\fermata
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	fis4 |
	fis4 fis g a |
	g4 fis8 gis ais4 b |
	ais2 r4 cis4 |
	b8 a g4 a g8 fis |
	e4 d8 e fis4 e8 d |
	cis2. } %fin du repeat
        cis4 |
	d4 d cis cis |
	d8 cis b4 cis fis |
	fis8 gis ais4 b ais8 b |
	cis8 fis, fis4 fis a! |
	gis4 a e e |
	e8 d e cis d4 cis |
	cis8 dis e4 e8 fis g! fis |
	fis8 gis a4 gis fis |
	e8 fis g4 fis8 e d4 |
	e2. d4 ~ |
	d4 cis8 b cis4
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

  lower = {
	\time 4/4
	\key fis \phrygian % d \major or b \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	ais4 |
	b4 cis8 d e4 a, |
	b8 cis d4 e fis |
	fis2 r4 fis4 |
	fis4 e d d |
	e4 a,8 b c4 b |
	ais2. } %fin du repeat
        a4 |
	b4 a a8 g fis4 |
	fis4 b ais ais |
	b4 e fis e8 d |
	cis4 b ais! b |
	b4 a b8 a gis4 |
	a4 a a a |
	a4 gis ais8 b cis4 ~ |
	cis8 b8 e4 e a,8 b |
	cis4 d d a |
	a4 b cis! b ~ |
	b4 ais8 gis ais4
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta2 {
	fis4 |
	b4 a! g fis |
	e4 d cis b |
	fis'2\fermata r4 ais4 |
	b4 e, fis g |
	cis,4 d dis e |
	fis2.\fermata } %fin du repeat
        fis4 |
	b,8 cis d4 a ais |
	b4 g fis\fermata fis' |
	b4 cis d cis8 b |
	ais4 b fis\fermata dis |
	e4 fis gis8 fis e d |
	cis8 b cis a d4\fermata a'8 gis |
	fis4 e8 d cis b ais4 |
	b4 cis8 dis e4\fermata fis8 gis |
	a4 b8 cis d4 d, |
	c4 b ais b |
	fis2.\fermata
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	 \set PianoStaff.instrumentName = \markup { \bold \huge "16." }
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
   tempoWholesPerMinute = #(ly:make-moment 88 4)
		}
	  }
	}

