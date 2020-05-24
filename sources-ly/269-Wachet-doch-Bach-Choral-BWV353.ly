
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 353" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line {"Wachet doch, erwacht, ihr Schläfer"}
                     \line { \italic "  old: Jesu, der du meine Seele"}
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
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r1 \tempo 4 = 78 | } %fin du repeat
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key g \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        d4 d a bes |
        c4 bes8 a a2 |
        g2\fermata bes4 bes |
        a4 g fis g |
        a1\fermata | } %fin du repeat
\break
        a4 bes c a |
        bes4 a8 g g2 |
        f2\fermata bes4 c |
        d4 bes es d |
        c2 bes\fermata |
        a4 bes c d |
        c4 bes a2\fermata |
        g4 a bes c8 bes |
        a4. g8 g2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g8 fis g4 fis g |
        g8 fis g4 g fis |
        d2 g4 g8 f |
        es8 d d c c4 d |
        d1 | } %fin du repeat
        fis4 g g f |
        f4 f f e |
        c2 f4 f |
        f8 es f d g4 g |
        g4 f8 es d2 |
        f4 es8 d c4 f8 g |
        a4 g fis2 |
        g4 d g g |
        g4 fis d2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        bes8 c d4 d d |
        c4 d es! d8 c |
        bes2 d4 g, |
        g8 fis g4 a8 c bes g |
        fis1 | } %fin du repeat
        d'4 d c c |
        bes8 c d4 c4. bes8 |
        a2 d4 a |
        bes4 bes4 bes8 c d bes |
        g8 es' a,4 bes2 |
        c4 bes f'8 es d4 |
        d4 d d2 |
        d4 d d c8 d |
        es8 c a d b2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        g8 a bes c d4 c8 bes |
        a4 g c, d |
        g,2\fermata g'8 f es d |
        c8 d es4 a, g |
        d'1\fermata | } %fin du repeat
        d4 g8 f! e4 f8 e |
        d4 c8 bes c2 |
        f,2\fermata d'4 f |
        bes8 c d8 bes g a bes g |
        es8 c f4 bes,2\fermata |
        f'4 g a bes8 a |
        g8 fis g4 d2\fermata |
        bes'8 a g fis g f es d |
        c8 a d4 g,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "269." }
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

