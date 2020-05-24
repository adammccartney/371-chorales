
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 358" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Jesu, meine Freude" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        \tempo 4 = 40 r1 \tempo 4 = 78 | } %fin du repeat
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 38 r1 |
	}

  upper = {
	\time 4/4
	\key d \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        a4 a g f |
        e2 d2\fermata |
        a'4 b c a |
        d2 cis2\fermata |
        d8 e f4 e e |
        d1\fermata | } %fin du repeat
        a4 a bes a |
        g4 g f2\fermata |
        a4 b c8 b a4 |
        d4 c8 b b2 |
        a2\fermata a4 a |
        g4 f e2 |
        d1\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 d e d |
        d4 cis a2 |
        d4 g, g'8 f e4 |
        a4 b a2 |
        g4 a8 bes! g bes a g |
        f1 | } %fin du repeat
        f4 f8 es d e f4 |
        f4 e c2 |
        c4 f e8 d c4 |
        f4 e8 f e4. d8 |
        cis2 d4 ~ d8 cis |
        d8 e ~ e d ~ d8 cis16 b cis4 |
        a1 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key d \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        f8 g a4 bes8 a a4 |
        bes4 a8 g f2 |
        f'8 e d4 c cis |
        d8 e f!4 e2 |
        d4 d d cis |
        a1 | } %fin du repeat
        d4 c bes8 c d4 |
        d4 c8 bes a2 |
        a4 g8 f g4 a |
        a8 gis a2 gis!4 |
        a2 f8 g a4 |
        d,8 a' a4 b8 e, a g! |
        fis1 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        d8 e f4 cis d |
        g,4 a d,2\fermata |
        d'8 e f4 e8 f g4 |
        fis8 gis gis4 a2\fermata |
        bes!4 a8 g a4 a, |
        d1\fermata | } %fin du repeat
        d8 e f4 g d8 c |
        bes8 g c4 f,2\fermata |
        f'4 e8 d e4 f |
        b,4 c8 d e2 |
        a,2\fermata d8 e f4 |
        b,8 cis d4 gis, a |
        d,1\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "356." }
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

