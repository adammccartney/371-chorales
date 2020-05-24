
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 39.7" }
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
        r4 r2 \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 | } % fin du repeat 
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 
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
        g4 fis e d\fermata |
        g4 a b c |
        b4 a g2\fermata | } % fin du repeat 
        b4 c d c |
        b4 a b2\fermata |
        d4 d e d |
        c4 b a2\fermata |
        b8 c d4 c b8 a |
        g4 a b2 |
        g2\fermata b8 c d4 |
        c4 b a b |
        a2 g2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 d d d |
        d8 cis d4 cis a |
        e'4 d d c |
        d4 d8 c b2 | } % fin du repeat
        g'4 fis8 e d e16 f e4 |
        e4 e dis2 |
        d!4 g g fis |
        e4 d8 e fis2 |
        g4 g g8 fis g fis |
        e8 d c4 b8 cis dis4 |
        e2 e4 f |
        e8 fis! g4 fis8 e d4 |
        d4. c8 b2 |
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
        b4 a g fis |
        g4 a a8 g fis4 |
        b4 a g8 fis g4 |
        g4 fis d2 | } %fin du repeat
        d'4 c fis,8 gis a4 |
        g!4 c fis,2 |
        g8 a b4 c8 b a4 |
        g8 a b cis d2 |
        d8 c b4 a d, |
        e4 fis g fis |
        e2 g4 gis |
        a4 e fis g |
        g4 fis d2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        g4 fis g d |
        e4 fis8 g a a, d4\fermata |
        e4 fis g e |
        d8 c d4 g,2\fermata | } %fin du repeat 
        g4 a b c8 d |
        e8 d c4 b2\fermata |
        b4 g c d |
        e8 fis g4 d2\fermata |
        g4 g, a b |
        c8 b a4 g8 a b4 |
        e,2\fermata e'4 b |
        c4 cis d8 c b g |
        d'2 g,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "67." }
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

