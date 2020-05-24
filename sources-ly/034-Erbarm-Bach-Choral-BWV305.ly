
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

  \header {
      opus = \markup { \bold "BWV 305" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Erbarm dich mein, o Herre Gott" }
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
	r4 r4 \tempo 4 = 34 r2 \tempo 4 = 78 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	R1 |
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
	\relative c' {
	\repeat volta2 {
	e4 |
	g4 g a b |
	c4 b a\fermata g |
	c4 b c a |
	g4 f e\fermata } %fin du repeat
        e4 |
	a4 a g c |
	b4 a g\fermata g |
	c4 g a e |
	a8 g f4 e2\fermata |
	a4 a g8 f e4 |
	f4 d c4\fermata c |
	g'2 a4 b |
	c4 g a g |
	f4. f8 e4\fermata
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	b4 |
	e4 e e f8 e |
	e8 a4 gis8 e4 e8 f |
	g8 a a g16 f g4. f8 ~ |
	f8 e8 ~ e8 d16 c b4 } %fin du repeat
        c4 |
	f4 f f8 e16 d e8 fis |
	g16 d g4 fis8 d4 e |
	e4 e8 d c b cis d |
	e4. d8 ~ d cis8\fermata c4 |
	c8 es4 d8 d4 c |
	c4 ~ c8 b8 g4 g |
	d'4 e8 d c4 d |
	e8 f g e f4 ~ f8 e8 ~ |
	e8 d ~ d c b4
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
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	g4 |
	b4 b c d |
	c8 e f e16 d c4 b |
	e4 f8 e16 d c4 c |
	c8. bes16 a8 b16 a gis4 } %fin du repeat
        a4 |
	c4 d4 ~ d8 c g a |
	d,8 d' e d16 c b4 c |
	c4 c8 bes a4 a |
	a4 a a a |
	a8 c4 b16 a b4 c8 b |
	a4 g8. f16 e4 e |
	g4 c8 d e f g4 |
	g,4 c c c8. bes16 |
	a8 b!16 c b8 a gis4
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta2 {
	e4 ~ |
	e8 f8 e d c a'4 gis8 |
	a8 c, d e a,4\fermata e'8 d |
	c4 d8 g e c f4 |
	c4 d e\fermata } %fin du repeat
        a8 g |
	f8 e d c b8 c b a |
	g8 b c d g,4\fermata c8 b |
	a8 b c e, f g a b |
	cis8 a d4 a\fermata a'8 g |
	f4 fis g a8 g |
	f8 d g g, c4\fermata c |
	b4 c8 b a4 g8 f |
	e8 d e c f8 a c4 |
	d2 e4\fermata
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "34." }
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

