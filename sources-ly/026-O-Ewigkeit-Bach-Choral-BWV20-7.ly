
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

  \header {
      opus = \markup { \bold "BWV 20.7" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "O Ewigkeit, du Donnerwort" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        \repeat volta 2 {
	r4 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 } % fin du repeat
        r4 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	R1 |
	r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key f \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        \repeat volta 2 {
	f8 g |
	a4 bes c c |
	d4 e f\fermata f,8 g |
	a4 bes c c |
	bes4 a g\fermata a |
	f4 f bes a |
	g2 f4\fermata } % fin du repeat
        c'4 |
	g4 a bes bes |
	a4 a g\fermata c |
	d4 e f a, |
	g2 f4\fermata
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        \repeat volta 2 {
	c4 |
	f4 e f a |
	bes8 a g4 a c, |
	f4 g ~ g f4 ~ |
	f8 e f4 e e4 ~ |
	e4 d d8 e f4 ~ |
	f4 e c } % fin du repeat
        f4 |
	g4 g fis g4 ~ |
	g4 fis d f |
	f4 c'8 bes a g f4 ~ |
	f4 e c4
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

  lower = {
	\time 4/4
	\key f \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        \repeat volta 2 {
	a8 bes |
	c4 bes a8 c f4 |
	f4 c c a |
	d4 d c8 bes a4 |
	bes4 c c a |
	a4 a g a |
	d4 c8 bes a4 } % fin du repeat
        a4 |
	bes4 c d e! |
	a,8 bes c4 bes c |
	bes8 a g4 f8 g a bes |
	c8 g c bes a4
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        \repeat volta 2 {
	f4 |
	f4 g a f |
	bes4 c f,\fermata f8 e |
	d4 c8 bes a4 d |
	g,4 a8 bes c4\fermata cis |
	d8 e f d g4 d8 c |
	bes4 c f,\fermata } % fin du repeat
        f'4 |
	e4 es d cis |
	d4 d g,\fermata a |
	bes4 c d8 e f4 |
	c4 c f,\fermata
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "26." }
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

