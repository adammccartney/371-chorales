
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 91.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Gelobet seist du, Jesu Christ" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key g \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 |
        g4 g a g |
        c4 d c2\fermata |
        b8 c d4 e d8 c |
        b4 a g\fermata g |
        c4 b8 c d4 a |
        g8 fis e4 d\fermata d4 |
        a'4 a a b |
        c8 b a4 g8 a b4 |
        a2\fermata g4 g |
        g2 g4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 |
        e4 d8 e fis4 e |
        g4 g8 f e2 |
        g8 a b4 c8 b a4 |
        g4 fis d d8 e |
        fis4 g g fis8 e |
        d8 b cis4 a a |
        d4 cis fis g |
        a8 g4 fis8 e a g4 |
        fis2 d8 e f4 |
        e4 e d4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        b4 |
        c4 b a8 d b4 |
        e8 c b4 g2 |
        e'4 f g d |
        d4 ~ d8 c b4 g |
        a4 d8 c b g d'4 |
        d4 a8 g fis4 fis8 g |
        a8 b cis e d4 d |
        e8 d e d ~ d8 c b c |
        d2 d4 b |
        g4 c b4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g8 fis |
        e8 fis g4 d e8 d |
        c4 g c2\fermata |
        e4 d c fis,! |
        g8 b d4 g,\fermata b4 |
        a4 g8 a b c d c |
        b8 g a4 d,\fermata d'8 e |
        fis8 g a cis, d c b4 |
        a8 b c d e fis g4 |
        d2\fermata b8 a g4 |
        c8 e16 d c8 c, g'4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "51." }
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

