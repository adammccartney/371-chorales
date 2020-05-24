
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 70.11" }
      piece = \markup { \hspace #1 \fontsize #2 \bold "Meinen Jesum laß ich nicht, weil er sich für mich gegeben" }
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
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
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
	\key c \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 g a a |
        b4 b c2\fermata |
        d4 d c c |
        b4 a8 b16 c a2 |
        g2\fermata g4 g |
        a4 a g f |
        e2\fermata g4 g |
        f4 f e d8 e16 f |
        d2 c2\fermata |
        c'4 c b b |
        a4 a g2\fermata |
        g4 g f e |
        d4 d c2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 e f f |
        f8 e d4 e2 |
        g4 g g fis |
        d4 c8 d16 e fis2 |
        d2 e8 d c4 |
        c4 d d8 e f d |
        c2 b4 e |
        d4 d c8 bes a4 |
        b!2 g |
        e'8 d c4 g'2 ~ |
        g8 a16 g fis e fis8 b,2 |
        e4 e d c!8 b |
        a4 b g2 |
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
        c4 c c d |
        d4 g, g2 |
        d'4 b a a |
        g8 fis e c'8 ~ c b a4 |
        b2 c4 g |
        f4 f g c8 g |
        g2 g4 a |
        a4 g g4. f8 ~ |
	f8 e8 d4 e2 |
        g4. fis8 d'4 d |
        d4 c8 a e'2 |
        cis4 a a2 ~ |
        a8 d, g f e2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        c8 b a g f e d4 |
        g4 g, c2\fermata |
        b8 c d e a, b c d |
        g,4 c d2 |
        g,2\fermata c8 d e c |
        f8 e d c b c a b |
        c2\fermata e8 d cis a |
        d8 c! b g c4 f, |
        g2 c2\fermata |
        c8 b a4 g8 a b c |
        d4 dis e2\fermata |
        a,8 b cis a d4 a8 g |
        f4 g c2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "348." }
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

