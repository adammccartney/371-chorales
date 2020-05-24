
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 372" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Herr, dein Ohren zu mir neige" }
                     \line { \hspace #9 \italic "old: Laß, o Herr, dein Ohr sich neigen" }
                 } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        R1 |
        R1 |
        \set Timing.measureLength = #(ly:make-moment 2 4)
        \tempo 4 = 34 r2 \tempo 4 = 78 } %fin du repeat
        r2 |
        \set Timing.measureLength = #(ly:make-moment 4 4)
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 
	}

  upper = {
	\time 4/4
        \key g \dorian  % f \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 g fis g |
        a4 bes a2 |
        \set Timing.measureLength = #(ly:make-moment 2 4)
        g2\fermata } %fin du repeat
\break
        bes4 a |
        \set Timing.measureLength = #(ly:make-moment 4 4)
        g4 bes a g |
        fis2\fermata f4 es |
        d4 g g fis |
\break
        g2\fermata bes4 c |
        d4 d c bes |
        c2 bes2\fermata |
\break
        bes4 c d d |
        c4 bes c2 |
        bes2\fermata bes4 a |
\break
        g4 bes a g |
        fis2\fermata f4 es |
        d4 g g fis |
        g2\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 d d d |
        es8 d d g g4 fis |
        \set Timing.measureLength = #(ly:make-moment 2 4)
        d2 } %fin du repeat
        g4 g8 fis |
        \set Timing.measureLength = #(ly:make-moment 4 4)
        g4 g8 f! es d e4 |
        d2 a8 bes c4 |
        bes8 c d4 es d |
        d2 g4 a |
        bes4 bes8 aes g f f4 |
        g4 f8 es d2 |
        f4 f f f |
        f8 es d4 g f8 es |
        d2 d4 d8 c |
        bes4 es8 d c d d4 |
        d2 d4 d8 c16 bes |
        a4 d es d |
        d2
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \dorian  % f \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        bes4 bes a bes |
        c4 bes8 d es4 d8 c |
        \set Timing.measureLength = #(ly:make-moment 2 4)
        bes2 } %fin du repeat
        d4 d8. c16 |
        \set Timing.measureLength = #(ly:make-moment 4 4)
        bes8 c d4 c bes8 a |
        a2 f4 f |
        f4 bes a4 ~ a16 bes c8 |
        bes2 d4 f |
        f4 f es8 c d bes ~ |
	bes8 a16 g a4 bes2 |
        d4 c c8 bes16 a bes4 |
        a4 bes bes a |
        f2 g4 fis |
        g4 g a bes |
        a2 g4 g |
        fis4 g8 bes a4. c8 |
        b2
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        g8 a bes c d c bes g |
        fis4 g c d |
        \set Timing.measureLength = #(ly:make-moment 2 4)
        bes2\fermata } %fin du repeat
        g'4 d |
        \set Timing.measureLength = #(ly:make-moment 4 4)
        es4 bes c cis |
        d2\fermata d8 c bes a |
        bes8 a g bes c a d4 |
        g,2\fermata g'4 f8 es |
        d8 c bes4 ~ bes8 a bes8 d |
        es8 c f4 bes,2\fermata |
        bes4. a8 bes f' bes4 |
        f4 g8 f es4 f |
        bes,2\fermata g4 d' |
        es4. e8 f fis g g, |
        d'2\fermata b4 c4 ~ |
	c8 bes16 a bes8 g c a d4 |
        g,2\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "218." }
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

