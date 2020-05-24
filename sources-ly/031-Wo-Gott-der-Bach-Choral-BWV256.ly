
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

  \header {
      opus = \markup { \bold "BWV 256" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Wo Gott der Herr nicht bei uns hält" }
                     \line { \italic "old: Ach lieben Christen, seid getrost" }
                 } }
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
	r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key a \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta2 {
	c4 |
	c4 a8 b c d e4 |
	d8 e16 f d4 c\fermata c |
	b4 a8 b c4 d8 c |
	b2 a4\fermata } %fin du repeat
\break
        d4 |
	e4 e b8 c d4 |
	c4 c b\fermata c |
	d4 a8 b c4 b |
	a16 b c8 a4 g\fermata c |
	b4 a8 b c4 d8 c |
	b2 a4\fermata
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	e8 f |
	g4 f g g |
	a4 g8 f e4 fis |
	g4 f! e a |
	a4 gis e } %fin du repeat
        g4 |
	g4 g d8 e f4 |
	e4 a gis a |
	a8 g! fis4 e d8 g |
	g8 e fis4 d e |
	d8 e fis f e4 a4 ~ |
	a4 gis4 e4
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

  lower = {
	\time 4/4
	\key a \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	c4 |
	c4 c c c |
	c4 b g a |
	d4 d c8 b a4 |
	f'4 e8 d cis4 } %fin du repeat
        b4 |
	c4 g8 a b4 a8 b |
	c8 d e4 e e |
	a,4 d g,8 a b d |
	e4 d8 c b4 g8 a |
	b8 c d4 c8 b a c |
	f8 d b e cis4
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	a4 |
	e4 f e8 d c4 |
	f4 g c,\fermata a' |
	g4 d' a8 g f e |
	d4 e a,4\fermata } %fin du repeat
        g4 |
	c8 d e f g4 f |
	a,8 b c d e4\fermata a8 g |
	fis8 e d4 e8 fis! g4 |
	c,4 d g,\fermata e'8 fis |
	g4 fis8 gis a g f e |
	d8 b e4 a,4\fermata
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "31." }
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

