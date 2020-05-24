
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 352" }
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
        r4 r2 \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r4 r4 \tempo 4 = 34 r2 \tempo 4 = 78 | } %fin du repeat
        R1 |
        r4 r2 \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r4 r2 \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r4 r4 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r4 r4 \tempo 4 = 34 r2 
	}

  upper = {
	\time 4/4
	\key a \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        e4 e b c |
        d4 c8 b b4 a\fermata |
        c4 c b a |
        gis4 a b2\fermata | } %fin du repeat
        b4 c d8 c b4 |
        c4 b8 a a4 g\fermata |
        c4 d e8 d c4 |
        f4 e d c\fermata |
        b4 c d e |
        d4 c b2\fermata |
        a4 b c8 b d4 |
        c4 b8 a a2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        a8 b c4 b a8 gis |
        a8 b a4 ~ a8 gis e4 |
        e4 a8 g! f e4 d8 |
        d8 e16 f e8 fis gis!2 | } %fin du repeat
        gis4 a a g |
        g8 fis g4 fis d |
        c4 g' g a8 g |
        a8 b c4 b g |
        g4 f8 e d4 g8 a |
        b4 a gis2 |
        a8 g! f e e f e d |
        e4 ~ e8. d16 cis2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key a \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        c8 b a4 e' e |
        d8 b c d e4 c |
        c8 b a4 ~ a8 gis a4 |
        b8 c16 d c8 e16 dis e2 | } %fin du repeat
        e4 e d d |
        c8 d e4 d8 c b4 |
        e4 b c8 b a4 |
        d4 g, g'8 f e4 |
        d4 c g'8 f e4 |
        f4 e e2 |
        e4 d c8 d gis, a |
        a4 gis e2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        a4 a' gis fis8 e |
        fis8 gis a4 e a,\fermata |
        a'8 g! f e d e f4 |
        b,4 c8 a e'2\fermata | } %fin du repeat
        e4 a8 g fis d g fis |
        e4 d8 c d4 g,\fermata |
        a'4 g8 f e4 f8 e |
        d4 e8 f g4 c,\fermata |
        g'4 a b c8 b |
        a8 gis a4 e2\fermata |
        c8 b a gis a d e f |
        e8 d e4 a,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "37." }
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

