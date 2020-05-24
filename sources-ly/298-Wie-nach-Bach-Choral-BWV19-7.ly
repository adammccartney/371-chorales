
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 19.7" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Wie nach einer Wasserquelle" }
                     \line { \italic "old: Weg, mein Herz, mit den Gedanken" }
                 } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        R2. |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 | } %fin du repeat
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. |
	}

  upper = {
	\time 3/4
	\key c \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        c2 d4 |
        e2 d4 |
        c2 b4 |
        a2. |
        g2.\fermata |
        c2 d4 |
        e2 f4 |
        e4 d2 |
        c2.\fermata | } %fin du repeat
        e2 f4 |
        g2 f4 |
        e4 d2 |
        e2.\fermata |
        g4 g2 |
        a2 g4 |
        f4 e2 |
        d2.\fermata |
        e2 g4 |
        f2 e4 |
        c4 d2 |
        e2. |
        c2.\fermata |
        e2 g4 |
        f2 e4 |
        d2 e4 |
        d2. |
        c2.\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g2 g4 |
        g2 fis4 |
        g4 a g |
        e4 fis2 |
        d2. |
        c2 g'4 |
        g2 a4 |
        e4 a g |
        g2. | } %fin du repeat
        g2 a4 |
        bes2 a4 |
        e4 a g |
        g2. |
        c4 bes2 |
        a4 b! c |
        c4 g2 |
        g2. |
        g2 g4 |
        a2 g4 |
        f4 d g |
        g2. |
        f2. |
        g2 g4 |
        g2 g4 |
        f4 d g |
        g2. |
        g2. |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key c \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e2 b4 |
        c4 b a |
        e'4 d d |
        c4 a2 |
        b2. |
        g2 b4 |
        c2 c4 |
        c2 b4 |
        g2. | } %fin du repeat
        c2 c4 |
        c2 c4 |
        c2 b4 |
        c2. |
        e4 e2 |
        c4 d e |
        c2 c4 |
        b2. |
        c2 c4 |
        c2 b4 |
        c4 b2 |
        c2 bes4 |
        a2. |
        c2 e4 |
        d2 c4 |
        a4 b c4 ~ |
        c4 b8 d f4 |
        e2. |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        c2 g4 |
        c,2 d4 |
        e4 fis g |
        c,4 d2 |
        g,2.\fermata |
        e'2 g4 |
        c4 b a |
        g4 f g |
        c,2.\fermata | } %fin du repeat
        c'2 a4 |
        e2 f4 |
        g4 f g |
        c,2.\fermata |
        c4 c'8 bes a g |
        f2 e4 |
        a8 b c4 c, |
        g'2.\fermata |
        c2 e,4 |
        f2 g4 |
        a4 b g |
        c2 c,4 |
        f2.\fermata |
        c2 c'4 |
        c4 b c |
        f,4 g c, |
        g2. |
        c2.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "298." }
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

