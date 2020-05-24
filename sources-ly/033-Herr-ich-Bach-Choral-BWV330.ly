
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

  \header {
      opus = \markup { \bold "BWV 330" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Herr, ich habe mißgehandelt" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta2 {
	R1 |
	r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
	R1 |
	r2 \tempo 4 = 34 r2 \tempo 4 = 78 | } %fin du repeat
	R1 |
	r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
	R1 |
	R1 |
	\tempo 4 = 40 r2.
	}

  upper = {
	\time 4/4
	\key a \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta2 {
	a4 e8 fis gis4 a |
	b8 c16 d c8 b b4 a\fermata |
	c4 b a b |
	c4 d e2\fermata | } %fin du repeat
	e4 f g c, |
	f4 e d c\fermata |
	d4 d e a, |
	d4 c8 b b2 |
	a2.\fermata r4 |
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	e8 d c4 b4 a4 |
	e'4 e8 f e4 e |
	a8 g f e e a4 gis8 |
	a8 e a b16 a gis2 | } %fin du repeat
	a4 a g a8 g |
	a8 d g,4. g16 f e4 |
	g8 a b4 ~ b8 gis8 a g |
	f8 e e f e4. d8 |
	cis2. r4 |
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

  lower = {
	\time 4/4
	\key a \minor
	\clef bass
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	c8 b a4 e8 e'8 d8 c8 |
	b8 gis a4 ~ a8 gis!8 c4 |
	e4 d c f,8 e |
	e8 a4 gis16 a b2 | } %fin du repeat
	c4 d4 ~ d8 c8 c4 |
	c8 b c4. b8 g4 |
	b8 d g f e4. d8 |
	c8 b a4 a gis |
	e2. r4 |
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta2 {
	a8 b c d e4 fis |
	gis8 e a d, e e, a4\fermata |
	a8 a'4 gis8 a f d e |
	a,8 g f4 e2\fermata | } %fin du repeat
	a8 a' g! f e4 f8 e |
	d4 e8 f g g, c4\fermata |
	g'8 f e d c d c b |
	a8 gis a d e4 e, |
	a2.\fermata r4 |
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "33." }
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

