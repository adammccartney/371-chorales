
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 304" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Eins ist not! ach Herr, dies eine" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        \bar "||"
	\time 3/4
        \set Timing.measureLength = #(ly:make-moment 1 4)
        r4 |
	\set Timing.measureLength = #(ly:make-moment 3 4)
        R2. |
        R2. |
        R2. |
        R2. |
        R2. |
        R2. |
        R2. |
        r4 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        R2. |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. |
	}

  upper = {
	\time 4/4
	\key d \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 g8 fis b4 b |
        cis4 cis d d\fermata |
        b4. a8 g4 a |
        g8 fis e fis d2\fermata |
        a'4 g8 fis b4 b |
        cis4 cis d d\fermata |
        b4. a8 g4 a |
        g8 fis e fis d2\fermata |
        \bar "||"
\break
	\time 3/4
        \set Timing.measureLength = #(ly:make-moment 1 4)
        d8 e |
	\set Timing.measureLength = #(ly:make-moment 3 4)
        fis4 fis fis |
        e4 e e8 fis |
        g4 g g8 fis |
        fis4 fis fis |
\break
        b4. a8 g4 |
        a4. g8 fis4 |
        g4 fis e |
        d4 d\fermata d8 e |
\break
        fis4 fis fis |
        e4 e e8 fis |
        g4 g g |
        fis2 fis4 |
\break
        b4. a8 g4 |
        a4. g8 fis4 |
        g4 fis e |
        d2.\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        fis4 d d g8 fis |
        e4 a8 g fis4 fis |
        d4 g8 fis e4 e |
        d4 cis a2 |
        e'4 d fis e8 d |
        cis4 fis fis fis |
        g8 fis e4 d e |
        e8 d d cis a2 |
        \bar "||"
	\time 3/4
        \set Timing.measureLength = #(ly:make-moment 1 4)
        a4 |
	\set Timing.measureLength = #(ly:make-moment 3 4)
        d4 d d |
        cis8 b cis d e4 |
        e4 e e |
        d8 cis d e fis4 |
        g4. fis8 e4 |
        e8 d cis4 d |
        d4 d cis |
        a4 a a |
        d4 d d |
        d4 cis8 b cis d |
        e4 e e |
        e4 d r4 |
        d4 g8 fis e4 ~ |
	e8 g8 fis e d a |
        d4. e8 cis4 |
        a2. |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key d \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 a b e8 d |
        cis8 b a4 a a |
        g8 a b4 b a |
        a4 a8 g fis2 |
        a4 a a8 fis g b ~ |
	b8 gis8 ais4 b b |
        d4 cis b8 g e a |
        a4 a fis2 |
        \bar "||"
	\time 3/4
        \set Timing.measureLength = #(ly:make-moment 1 4)
        fis8 g |
	\set Timing.measureLength = #(ly:make-moment 3 4)
        a4 a a8 b |
        cis8 d e d cis4 |
        b4 b b8 cis |
        d8 e fis e d cis |
        b8 a g a b4 |
        a4 a a |
        g8 a b4 e, |
        fis4 fis fis |
        b4 b a |
        b4 a8 gis! a4 |
        a4 b cis |
        a2 a4 |
        d8 cis b4. b8 |
        a4. cis8 d4 |
        d,4 a' a8 g |
        fis2. |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        d4 d g8 fis e4 |
        a8 g fis e d4 d4\fermata |
        g8 fis e4 e8 d cis4 |
        d4 a d2\fermata |
        cis4 d dis e |
        eis4 fis b, b\fermata |
        g4 a b cis |
        d4 a d2\fermata |
        \bar "||"
	\time 3/4
        \set Timing.measureLength = #(ly:make-moment 1 4)
        d4 |
	\set Timing.measureLength = #(ly:make-moment 3 4)
        d8 cis d e fis g |
        a4 a, a' |
        e8 dis e fis g a |
        b4 b, b'8 a |
        g8 fis e4 e8 d |
        cis8 b a4 d8 cis |
        b8 a g4 a |
        d4 d\fermata d8 cis |
        b4 b'8 a g fis |
        gis4 e a |
        cis,4 d8 cis b a |
        d2 r4 |
        b4 e e8 d |
        cis8 a d4. cis8 |
        b4 a8 g a4 |
        d2.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "280." }
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

