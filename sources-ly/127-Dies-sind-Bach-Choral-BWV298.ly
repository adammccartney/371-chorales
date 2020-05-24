
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 298" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Dies sind die heiligen zehn Gebot" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key c \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 |
        g4 g g g |
        g8 a b4 c\fermata c |
        d4 d c g |
        g8 a b4 c\fermata c |
        d4 d c g |
        a4 g f\fermata g |
        a4 b c2\fermata |
        bes8 a g a bes!4\fermata a |
        g4 g4 g2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 |
        e4 f e e |
        d4. e16 f e4 f8 g |
        a8 g f4 f4. e8 |
        d4 g8 f e4 f |
        f4 f f e |
        e8 f e4 d e |
        f4 f8 e e2 |
        fis4 g8 d d4 f |
        f4 e d2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key c \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        b4 |
        c4 d d c |
        b8 a g4 g a8 c |
        f4 a,8 b c4 c |
        b8 a g4 g a |
        a4 d g, c8 bes |
        a4 bes8 a a4 c |
        c8 d d4 c2 |
        d8 c bes a g4 a |
        d4. c8 c b!16 a b4\fermata
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g8 f8 |
        e8 d c b c d e f |
        g4 g, c\fermata f8 e |
        d8 e f g a b c4 |
        g8 f e d c4\fermata f8 e8 |
        d8 c4 b8 c d e d |
        cis8 d4 cis8 d4\fermata c8 b |
        a8 a'4 gis8 a2\fermata |
        d,4 e8 fis g4\fermata d8 c |
        b!8 g c4 g2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "127." }
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

