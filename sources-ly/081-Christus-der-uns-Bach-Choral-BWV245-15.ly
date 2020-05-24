
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 245.15" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Christus, der uns selig macht" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 40 r1 
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
        e4 e e e |
        d4 c b2\fermata |
        c4 d e e |
        d4 c b2\fermata |
        a4 b c a |
        a8 g f4 e2\fermata |
        f4 g a a |
        g4 f e2\fermata |
        a4 gis4 a b |
        c4 b a2\fermata |
        c4 d e e |
        d4 c b2\fermata |
        a4 b c a |
        a8 g f4 e2\fermata |
        f4 g a a |
        g4 f e2 ~ |
        e1\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        gis4 gis a b |
        a4 a gis2 |
        e8 fis g!4 g f8 e |
        f4 e e2 |
        e4 e e f |
        e4 d cis2 |
        d4 e es d |
        d2 cis |
        d4 e e fis8 gis! |
        a4 g! fis2 |
        g4 g g f |
        f4 e8 fis8 g2 |
        a4 e e e |
        a,4 d cis2 |
        d4 e f f |
        e4 d2 c4 |
        b1 |
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
        b4 b c b8 c |
        d8 e f4 b,2 |
        a4 bes bes a |
        a2 gis |
        c4 b a8 b c d |
        e4 a, a2 |
        a4 c! c c |
        bes8 c d4 a2 |
        a4 b! c d |
        e4 d d2 |
        c4 bes a a |
        a8 b! c!4 d2 |
        d8 c b4 a8 b c d |
        e4 a, a2 |
        a4 c! c c |
        c8 b a4 gis a |
        gis1 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        e4 e a g! |
        f4 e8 d e2\fermata |
        a4 g cis, cis |
        d4 a e'2\fermata |
        a4 gis a f |
        cis4 d4 a2\fermata |
        d4 c! f, fis |
        g4 gis a2\fermata |
        f'4 e8 d c4 b |
        a4 b8 c d2\fermata |
        es4 d cis d8 e |
        f8 g a4 g2\fermata |
        fis4 gis a a,8 b |
        cis4 d a2\fermata |
        d4 c! f,8 g a b |
        c4 d e2 ~ |
        e1\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "81." }
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

