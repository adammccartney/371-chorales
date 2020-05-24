
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 4.8" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Christ lag in Todesbanden" }
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
	r2 \tempo 4 = 30 r4 \tempo 4 = 72 r4 |
	R1 |
	r2 } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            \tempo 4 = 30 r4 \tempo 4 = 72  }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            \tempo 4 = 34 r2 \tempo 4 = 72 \bar "||" }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 72 r4 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 72 r4 |
	R1 |
	r2 \tempo 4 = 34 r2 \tempo 4 = 72 |
	R1 |
	r2 \tempo 4 = 34 r2 \tempo 4 = 72 |
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
	\repeat volta 2 {
	a4 |
	gis4 a8 b c4 d |
	c4 b a\fermata a |
	f4 g a g8 f |
	e8 d e4 } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            d4\fermata  }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            d2\fermata \bar "||" }
        }
\break
        \set Timing.measureLength = #(ly:make-moment 4 4)
	d8 e f4 g d8 e |
	f4 g a\fermata a |
	d4 cis d e8 d |
	c4 b a\fermata b |
	c4 a8 bes c4 g |
	f4 e d2\fermata |
	a'4 g f2 |
	e2 d\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
	f4 |
	e4 e e e |
	e4 e8 d cis4 e |
	d4 c! c8 cis d4 ~ |
	d4 cis } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            a4 }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            a2 \bar "||" }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
	a4 d d4. cis8 |
	d4 c! c f8 g |
	a4 g a e |
	e4 e8 d c4 d |
	e4 c f e |
	e8 d4 cis8 d2 |
	c!8 d e4 ~ e8 cis d4 ~ |
	d4 cis a2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key d \dorian % c \major
	\clef bass
	%\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
	d8 c |
	b4 c8 gis a4 b |
	a4 gis e a |
	a8 bes a g f g a4 |
	bes4 e,8 g } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            f4 }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            f2 \bar "||" }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
	f8 g a4 g8 a bes4 |
	a4 g f c' |
	f4 e d8 c b4 |
	a4 gis e f |
	g4 f f c'8 bes |
	a4 g f2 |
	f4 e8 a a4 bes ~ |
	bes4 a8 g fis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
	d4 |
	e8 d c b a4 gis |
	a4 e a\fermata cis |
	d4 e f8 e d4 |
	g,8 a16 bes a4 } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            d,4\fermata  }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            d2\fermata \bar "||" }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
	d'4. c8 bes a g4 |
	d'4 e f\fermata f8 e |
	d4 e fis gis |
	a4 e a,\fermata d |
	c4 f a,8 bes c4 |
	d4 a bes2\fermata |
	f'4 cis d bes |
	g4 a d,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "184." }
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
      tempoWholesPerMinute = #(ly:make-moment 72 4)
		}
	    }
	}

