
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

  \header {
      opus = \markup { \bold "BWV 277" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Christ lag in Todesbanden" }
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
	r2 \tempo 4 = 30 r4 \tempo 4 = 72 r4 |
	R1 |
	r4 r4 
        } %fin du repeat
         \alternative {
            {  \set Timing.measureLength = #(ly:make-moment 1 4)
              \tempo 4 = 30 r4 \tempo 4 = 72 |
            }
            { \set Timing.measureLength = #(ly:make-moment 2 4)
               \tempo 4 = 34 r2 \tempo 4 = 72 |
            }
         }
        \set Timing.measureLength = #(ly:make-moment 4 4)
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 72 r4 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 72 r4 |
	R1 |
	r4 r4 \tempo 4 = 34 r2 \tempo 4 = 72 |
	R1 |
	\tempo 4 = 34 r1 
	}

  upper = {
	\time 4/4
	\key d \dorian % c \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta2 {
	a4 |
	gis4 a8 b c4 d |
	c4 b a\fermata a |
	f4 g a g8 f |
	e8 d e4 
        } %fin du repeat
         \alternative {
            {  \set Timing.measureLength = #(ly:make-moment 1 4)
              d4\fermata |
            }
            { \set Timing.measureLength = #(ly:make-moment 2 4)
               d2\fermata |
            }
         }
        \set Timing.measureLength = #(ly:make-moment 4 4)
	d8 e f4 g d8 e |
	f4 g a\fermata a |
	d4 cis d e8 d |
	c!4 b a\fermata b |
	c4 a8 bes c4 g |
	f4 e d2\fermata |
	a'4 g f e |
	d1\fermata |
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	f4 |
	f8 e4 gis!8 a4 b ~ |
	b8 a4 gis8 e4 e ~ |
	e8 d8 cis d e4. d8 |
	cis8 d4 cis8
        } %fin du repeat
         \alternative {
            {  \set Timing.measureLength = #(ly:make-moment 1 4)
              a4 |
            }
            { \set Timing.measureLength = #(ly:make-moment 2 4)
              a2 |
            }
         }
        \set Timing.measureLength = #(ly:make-moment 4 4)
	a4 d d8 c bes c |
	d8 a d c c4 f8 g |
	a8 bes8 ~ bes a a4 e ~ |
	e8 f4 e8 e4 f ~ |
	f8 e8 f4 f e ~ |
	e8 d8 cis d d2 |
	d4. e8 cis d4 cis8 |
	a1 |
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

  lower = {
	\time 4/4
	\key d \dorian % c \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	d8 c |
	b4 c8 d e4 f8 e |
	e8 f4 e16 d cis4 a |
	a4 bes a a |
	a8 f g e 
        } %fin du repeat
         \alternative {
            {  \set Timing.measureLength = #(ly:make-moment 1 4)
              f4  |
            }
            { \set Timing.measureLength = #(ly:make-moment 2 4)
              f2 |
            }
         }
        \set Timing.measureLength = #(ly:make-moment 4 4)
	f8 g a4 g8 a bes4 |
	a8 f'8 ~ f e f4 c |
	f,4 g d'8 c b4 ~ |
	b8 a4 gis8 c4 d |
	g,8 c c4 c8 d e d |
	cis8 a bes a16 g f2 |
	a8 c bes4 a g ~ |
	g4 fis8 e fis2 |
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta2 {
	d4 |
	d4 c8 b a a'4 gis8 |
	a8 f d e a,4\fermata cis |
	d8 f e d cis a d4 |
	a'4 a, 
        } %fin du repeat
         \alternative {
            {  \set Timing.measureLength = #(ly:make-moment 1 4)
              d4\fermata |
            }
            { \set Timing.measureLength = #(ly:make-moment 2 4)
              d2\fermata |
            }
         }
        \set Timing.measureLength = #(ly:make-moment 4 4)
	d4. c8 bes a g4 |
	d'8 c bes c f,4 f'8 e |
	d4 e fis gis |
	a8 f! d e a,4\fermata d |
	c4 f,8 g a bes c bes |
	a8 f g a bes2\fermata |
	fis4 g a2 |
	d,1\fermata |
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	 \set PianoStaff.instrumentName = \markup { \bold \huge "15." }
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
   tempoWholesPerMinute = #(ly:make-moment 72 4)
		}
	  }
	}

