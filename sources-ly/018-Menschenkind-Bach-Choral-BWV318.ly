
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

  \header {
      opus = \markup { \bold "BWV 318" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Menschenkind, merk eben" }
                                             \line { \italic "old: Gottes Sohn ist kommen" }
                   } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	R1 |
	r4 r4 \tempo 4 = 34 r2 \tempo 4 = 78 |
	R1 |
	r4 r4 \tempo 4 = 34 r2 \tempo 4 = 78 |
	R1 |
	r4 r4 \tempo 4 = 34 r2 \tempo 4 = 78 |
	R1 |
	R1 |
	\tempo 4 = 34 r1 \tempo 4 = 78 |
	R1 |
	r4 r4 \tempo 4 = 34 r2 \tempo 4 = 78 |
	R1 |
	r4 r4 \tempo 4 = 34 r2 
	}

  upper = {
	\time 4/4
	\key g \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	g4 g8 a b4 c |
	d4 e d2\fermata |
	e4 fis g d |
	b4 cis d2\fermata |
	c!4 a b c |
	b4 a g2\fermata |
	fis4 g a b |
	a4. g8 fis4 e |
	d1\fermata |
	g4 g8 a b4 c |
	d4 e d2\fermata |
	g,4 a b c |
	b4 a g2\fermata |
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	d4 e8 fis g4 fis8 e |
	d8 fis b a fis2 |
	a4 a g a |
	g8 fis e4 fis2 |
	e4 d d c |
	d4. c8 b2 |
	d4 cis8 b a4 d |
	e2 ~ e8 d4 cis8 |
	a1 |
	d4 e8 fis g4 g |
	f4 e8 fis g2 |
	g8 e d c b a g fis' |
	g4. fis8 d2 |
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

  lower = {
	\time 4/4
	\key g \major
	\clef bass
	%\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	b4 c d c |
	b16 c d4 cis8 d2 |
	c!8 b c d b4 a |
	d4 a a2 |
	g4 a g8 fis g4 |
	g4 fis g2 |
	a4 g d'8 cis b4 |
	e,4 a2 g4 |
	fis1 |
	g4 c d c ~ |
	c8 b8 c4 b2 |
	b4 a d e8 a, |
	b8 c d4 b2 |
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	g4 c, g8 g' a4 |
	b8 a g a d,2\fermata |
	a'4 d, e fis |
	g4 a d,2\fermata |
	e4 fis g e |
	d8 c d4 g,2\fermata |
	d'4 e fis g |
	cis,4 a d a |
	d1\fermata |
	b4 c g' e |
	d4 c g'2\fermata |
	e4 fis g e |
	d2 g2\fermata |
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "18." }
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

