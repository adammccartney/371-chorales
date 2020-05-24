
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 292" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Den Vater dort oben" }
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
        g4 g a b |
        c2 c2\fermata |
        e4 d c b |
\break
        a2 g\fermata |
        g4 g a b |
        c4 g g2\fermata |
\break
        a4 g f e |
        d4 d c2\fermata |
\break
        c'4 d c b |
        a2 g\fermata |
        g4 g a b |
\break
        c4 g g2\fermata |
        a4 g f e |
        d2 c2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 d e8 fis g4 |
        g4 f2 e4 |
        g4 fis8 g16 fis e8 a d, c16 d |
        e8 c a d16 c b2 |
        e4 e e8 fis g4 |
        g8 f8 ~ f e16 d16 e2 |
        f8 e d e16 d c8 b c4 ~ |
	c4 c8 b g2 |
        g'4 g4 ~ g8 fis8 g4 |
        g4 fis g2 |
        e8 f! g4 ~ g8 f16 e16 f4 |
        f8 e d4 c2 |
        c8 f4 e8 ~ e d8 c4 ~ |
	c8 b16 a b4 g2 |
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
        c4 g c d |
        c8 bes a4 g2 |
        c8 b a b16 a g8 fis g4 ~ |
	g4. fis8 d2 |
        b'4 b c d |
        c4 d8 g, c2 |
        c4 b8 c16 b a8 d g, f16 g |
        a8 f d g16 f e2 |
        e'4 d g,8 a b c16 d |
        e8 c a d16 c b2 |
        c4 c c d |
        g,4 g8. f16 e2 |
        f4 g8 c16 bes a4 a |
	a8 d,8 d g16 f e2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        c4. b8 a4 g8 f |
        e4 f4 c2\fermata |
        c'4. b8 ~ b a8 g a16 b |
        c8 a d4 g,2\fermata |
        e8 e'4 d8 c4 b |
        a4 b c2\fermata |
        f4. e8 ~ e8 d8 c d16 e |
        f8 d g g, c2\fermata |
        c4. b8 e4 d |
        c4 d g,2\fermata |
        c8 d e4 f8 e d4 |
        c4. b8 c2\fermata |
        f4 c d a8 g |
        f4 g c,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "239." }
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

