
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 422" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Warum sollt ich mich denn grämen" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key c \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 g a g |
        a8 b c4 c b |
        c2\fermata d4 e |
        c2\fermata b8 c d4 |
        a2\fermata d4 d |
        c4 b a a8. g16 |
        g2\fermata c4 c |
        b4 c a d |
        d4 cis d2\fermata |
        d4 e c2\fermata |
        b8 c d4 a2\fermata |
        d4 d c b8 a |
        a4 a8. g16 g2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e8 f g e8 ~ e d8 ~ d g8 |
        f4 g g2 |
        g2 g8 f e4 |
        e2 e4 d |
        d2 d4 e |
        e8 d ~ d g g4 fis |
        d2 g8 fis g a |
        g4 g4 ~ g f |
        e2 fis |
        g4 g f!2 |
        d8 e d e fis2 |
        fis4 g8 fis e fis g4 |
        g4 fis d2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key c \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        c4 c c b8 c |
        f4 e d8 e f g16 f |
        e2 b4 b |
        a2 g4 g |
        fis2 fis4 g ~ |
	g8 a8 b d e4 a,16 b c8 |
        b2 g4 e' |
        d4 c c a |
        bes4 a4 a2 |
        b4 bes8 c16 bes a2 |
        g4 g d'2 |
        d8 c b4 c d |
        d4 a16 b c8 b2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        c8 d e c f4. e8 |
        d4 e8 f g2 |
        c,2\fermata g'4 gis |
        a2\fermata e4 b8 c |
        d2\fermata b4 e4 ~ |
	e8 fis8 g b, c a d4 |
        g,2\fermata e'8 d e fis |
        g8 f! e c f e f d |
        g8 e a a, d2\fermata |
        g4 c, f2\fermata |
        f8 e b c d2\fermata |
        b4 e a, b8 c |
        d2 g,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "357." }
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

