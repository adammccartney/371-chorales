
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 397" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "O Ewigkeit, du Donnerwort" }
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
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 40 r1 \tempo 4 = 78 | } %fin du repeat
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key f \major
	\clef treble

	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        f4. g8 a4 bes |
        c4 c d e |
        f2\fermata f,4. g8 |
        a4 bes c c |
        bes4 a g2\fermata |
        a2 f4 f |
        bes4 a g2 |
        f1\fermata | } %fin du repeat
        c'2 g4 a |
        bes4 bes a4. g8 |
        g2\fermata c |
        d4 e f a, |
        g4. g8 f2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        c4 d8 e f4 f |
        f8 g a4 a8 g bes a |
        f2 d4. e8 |
        f4 g fis8 g a4 |
        a8 g g f c2 |
        c2 d8 e f4 |
        f8 e f4 f e |
        c1 | } %fin du repeat
        f2 f8 e es d |
        d4 g g fis |
        d2 f4. es8 |
        d8 f bes4 a8 g f4 |
        f4 e c2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key f \major
	\clef bass
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        a4 bes c d |
        c4 f f8 g g cis, |
        d2 a4 bes |
        a4 d4 es d |
        d4 c8 d e2 |
        f4 es d d8 c |
        bes8 c d4 d c8 bes |
        a1 | } %fin du repeat
        a8 bes c2 c4 |
        bes4 bes es d8. c16 |
        bes2 a8 c f4 ~ |
	f4 g4 f8 e d4 |
        d4 c8 bes a2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c, {
	\repeat volta 2 {
        f4 f'2 d4 |
        a4 a' b cis8 a |
        d2\fermata d, |
        d'4 c8 bes a g fis d |
        g4 a8 bes c2\fermata |
        f,2 bes8 c bes a |
        g4 d8 c bes4 c |
        f,1\fermata | } %fin du repeat
        a'4. bes8 c4 fis, |
        g8 f! es d c4 d |
        g,2\fermata a |
        bes8 bes' a g d' d, d'8 c |
        bes8 g c c, f2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "274." }
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

