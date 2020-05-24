
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

  \header {
      opus = \markup { \bold "BWV 363" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Jesus Christus, unser Heiland, der von uns" }
                                               \line { "den Gottes Zorn wandt" }
                                           } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	R1 |
	R1 |
	r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
	R1 |
	R1 |
	r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
	R1 |
	R1 |
	\tempo 4 = 34 r2 \tempo 4 = 78 r2 |
	R1 |
	R1 |
	\tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
	\key e \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	e4 b' b a |
	b4 e,8 fis g4 g |
	g4 fis e2\fermata |
	g4 g g e |
	g4 a b a |
	g4 fis e2\fermata |
	g4 g g e |
	g4 a b a |
	g2\fermata r4 d'4 |
	e4 d8 c b a g a |
	b4 a g fis |
	e2.\fermata
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	b4 b e8 dis e4 |
	dis4 e8 dis e4 e |
	e4. dis8 b2 |
	e4 e d! c |
	d4 e8 fis g4. fis8 ~ |
	fis8 e4 dis8 b2 |
	e4 g8 fis e4 c |
	e8 d e fis g4. fis8 |
	d2 r4 g8 f |
	e4 fis! g8 dis e d ~ |
	d8 g ~ g fis8 ~ fis e8 ~ e dis |
	b2.
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

  lower = {
	\time 4/4
	\key e \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	g4 fis g fis8 e |
	fis4 b8 a b4 e8 dis |
	cis4 fis,8 b16 a! g2 |
	b4 c! g g |
	g8 a16 b c4 d8 e16 d c b c8 |
	b4 ~ b8. a16 g2 |
	b8 c d4 c g |
	g4 c d4 ~ d8. c16 |
	b2 r4 d4 |
	c8 b a4 g8 c b a |
	g8 d' e b b4 c!8 b16 a |
	gis2.
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	e4. d8 c2 |
	b8 a' g fis e d c b |
	ais4 b e,2\fermata |
	e'8 d c!4 b c ~ |
	c8 b8 a4 g a |
	b2 e\fermata |
	e4 b c8 d e d |
	c8 b a4 g d' |
	g,2\fermata r4 b4 |
	c4 d e4. fis8 |
	g8 b, cis dis e g, a b |
	e,2.\fermata
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "30." }
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

