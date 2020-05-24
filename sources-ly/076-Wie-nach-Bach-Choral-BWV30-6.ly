
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 30.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Wie nach einer Wasserquelle" }
                     \line { \italic "old: Freu' dich sehr, o meine Seele" }
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
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 | 
	}

  upper = {
	\time 4/4
	\key g \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 a b a |
        g4 fis e2 |
        d2\fermata g4 a |
        b4 c b a |
        g1\fermata | } %fin du repeat
\break
        b4 c d c |
        b4 a b2\fermata |
        d4 d e d |
        c4 b a2\fermata |
        b8 c d4 c b8 a |
        g4 a b2 |
        g2\fermata b8 c d4 |
        c4 b a b8. c16 |
        a2 g2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 d g cis, |
        d8 e e d d4 cis |
        a2 e'4 e8 d |
        d4 a' a8 g g fis |
        d1 | } %fin du repeat
        g4 g8 f f4 e8 fis |
        gis4 a8 a, e'2 |
        d4 g!8 f e4 fis |
        g8 d4 e8 fis2 |
        g4 a g fis |
        fis8 e e fis g4 fis |
        e2 gis4 a8 e |
        e8 fis g!4 fis g4 ~  |
        g8 fis16 e fis4 d2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        b4 d d8 e e fis |
        b,8 a a4 b a8 g |
        fis2 b4 a |
        a8 g g fis d'4 d8 c |
        b1 | } %fin du repeat
        d4 a a8 gis a4 |
        e8 e'4 d8 gis,2 |
        g!8 a b4 b8 a a b |
        b8 a b cis d2 |
        d4 d g,8 a b4 |
        b4 c8 a e'4. dis8 |
        b2 e4 a,8 b |
        c4 d d d |
        d4. c8 b2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        g4 fis g a |
        b8 cis d4 g, a |
        d,2\fermata e4 fis |
        g a b8 c d4 |
        g,1 | } %fin du repeat
        g4 a b c8 d |
        e4 f e2\fermata |
        b8 a g4 c d |
        e8 fis g4 d2\fermata |
        g4 g8 fis e4 dis |
        e8 d! c4 g8 a b4 |
        e,2\fermata e4 fis8 gis |
        a4 b8 c d c b g |
        d'4 d, g2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "76." }
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

