
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

  \header {
      opus = \markup { \bold "BWV 36 (2).8" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Nun komm, der Heiden Heiland" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	R1 |
	r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
	R1 |
	r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
	R1 |
	r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
	R1 |
	r2 \tempo 4 = 34 r2 
	}

  upper = {
	\time 4/4
	\key b \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	b4 b a d |
	cis8 b cis4 b2\fermata |
	b8 cis d4 e d |
	e4 fis d2\fermata |
	d4 e fis8 e d4 |
	e8 d cis4 b2\fermata |
	b4 b a d |
	cis8 b cis4 b2\fermata |
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	fis4 e fis fis8 g16 a |
	g8 fis e4 d2 |
	fis4. gis8 a4. b8 |
	cis4 d8 fis, g2 |
	a4 a a8 ais b4 |
	cis8 b ais4 fis2 |
	fis4 eis fis8 gis a b |
	fis8 b8 ~ b8 ais fis2 |
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

  lower = {
	\time 4/4
	\key b \minor
	\clef bass
	%\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	d4 cis8 b cis4 b |
	b4. ais8 fis2 |
	d'8 cis b4 cis d |
	g,4 a8 b16 c b2 |
	a4 e' d8 cis b4 |
	g'4 cis,8 fis d2 |
	d4 cis8 b cis4 fis |
	e8 d cis16 d e8 dis2 |
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	b8 a g4 fis8 e d b |
	e8 d e fis b,2\fermata |
	b4 b' a!8 g! fis4 |
	e4 d g2\fermata |
	fis8 e d cis d4 g8 fis |
	e4 fis b,2\fermata |
	b'8 a gis4 fis8 e fis gis! |
	ais8 b fis4 b,2\fermata |
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "28." }
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

