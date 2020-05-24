
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

  \header {
      opus = \markup { \bold "BWV 26.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Ach wie nichtig, ach wie flüchtig" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
	r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
	R1 |
	r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
	R1 |
	r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
	R1 |
	r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
	R1 |
	r2. \tempo 4 = 30 r4 | 
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
	a4 b c c\fermata |
	c4 d e e\fermata |
	e4 e d c |
	b4 ~ b8 a8 a2\fermata |
	e'4 e f f |
	e4 e d d\fermata |
	d4 d e e |
	d4 d c c\fermata |
	c4 d e d8 c |
	b4 b a a\fermata |
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	e4 e e e |
	e4 g g g |
	g4 c ~ c8 b4 a8 |
	a4 gis e2 |
	a4 a a bes |
	bes4 a8 g g e fis4 |
	g4 g g a |
	a4 g8 f f d e4 |
	f4 f e e |
	fis4 e8 d d b cis4 |
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

  lower = {
	\time 4/4
	\key a \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	c4 b a a |
	a4 b c c |
	c8 d c b a b c e |
	f4 e8 d cis2 |
	cis8 d e cis d4 d |
	d4 cis d a |
	b8 c d b c4 c |
	c4 b c g |
	a4 a b a |
	a4 gis a e |
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	a4 gis a a,\fermata |
	a'4 g c c,\fermata |
	c'8 b a g fis gis a4 |
	d,4 e a,2 \fermata |
	a8 b cis a d c bes a |
	g8 e a4 d d,\fermata |
	g8 a b g c b a g |
	f8 d g4 c c,\fermata |
	f'4 e8 d gis, gis' a4 |
	dis,4 e a a,\fermata |
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "48." }
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

