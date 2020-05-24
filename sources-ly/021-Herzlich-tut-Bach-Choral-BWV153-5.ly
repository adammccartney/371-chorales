
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

  \header {
      opus = \markup { \bold "BWV 153.5" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Herzlich tut mich verlangen" }
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
	\tempo 4 = 40 r2. \tempo 4 = 78 } %fin du repeat
        r4 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	R1 |
	\tempo 4 = 40 r2. \tempo 4 = 78 r4 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	R1 |
	\tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
        \key e \phrygian % c \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	e4 |
	a4 g f e |
	d2 e4\fermata b' |
	c4 c b b |
	a2.\fermata } %fin du repeat
        c4 |
	b4 g a b |
	c2 c4\fermata g |
	a4 g a f |
	e2.\fermata c'!4 |
	b8 c d4 c b |
	a2 b4\fermata e, |
	f4 e d g |
	e2.\fermata
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	b4 |
	e4 e d cis |
	d2 cis4 e |
	dis4 e fis e8 d |
	c2. } %fin du repeat
        e8 fis |
	g4 d e f |
	g4 f e g |
	f4 e8 d e4 d |
	cis2. d4 |
	d4 g4 ~ g8 fis g4 |
	g4 fis g g |
	d4 c c b8 c |
	d4 c b4^\fermata 
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

  lower = {
	\time 4/4
        \key e \phrygian % c \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	gis4 |
	a4 bes a g |
	a8 g16 f g8 d a'4 b! |
	a4 a a gis |
	a2. } %fin du repeat
        a4 |
	d4 b c d |
	c8 bes a4 g c |
	c4 cis8 d a4 a |
	a2. a4 |
	g8 a b4 c d |
	e4 d d c8 b |
	a4 g a g8 a |
	b4 a gis!  
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta2 {
	d4 |
	c4 cis d e |
	f4 bes, a\fermata g' |
	fis4 e dis e |
	a,2.\fermata } %fin du repeat
        a'4 |
	g4 f e d |
	e4 f c\fermata e |
	f4 bes cis, d |
	a2.\fermata fis'4 |
	g4 g, a b |
	c4 d g,\fermata c |
	d4 e fis g |
	gis4 a e\fermata
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "21." }
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

