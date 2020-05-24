
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 433" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Wer Gott vertraut, hat wohl gebaut" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        R1 |
        \tempo 4 = 34 r1 \tempo 4 = 78 | } %fin du repeat
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
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
        r4 g4 g a |
        b2\fermata r4 b4 |
        c4 b a2\fermata |
        r4 a4 g a |
\break
        b4 a g2 |
        a4\fermata a b a |
        g4 g fis2 |
        g1\fermata | } %fin du repeat
\break
        r4 b4 c b |
        a2\fermata r4 a4 |
        g4 g fis2\fermata |
        r4 fis4 g fis |
\break
        e4 e dis2 |
        e2\fermata r4 g4 |
        g4 fis g2\fermata |
        r4 b4 c b |
\break
        a2\fermata r4 a4 |
        g4 a b a |
        g2 a4\fermata a4 |
        b4 a g g |
        fis2 g2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        r4 d4 e8 g4 fis8 |
        g2 r4 g4 ~ |
	g8 fis8 g4 g fis\fermata |
        r4 fis4 ~ fis8 e4 d8 |
        d4 d d cis |
        d4 d d8 e fis4 ~ |
	fis8 e8 d e d2 |
        d1 | } %fin du repeat
        r4 g4 g8 a4 g8 ~ |
	g8 fis16 e fis4\fermata r4 fis4 ~ |
	fis4 e4 ~ e4 dis4\fermata |
        r4 fis4 b,8 e dis4 |
        e4 b8 c b2 |
        b2 r4 b8 c |
        d8 e d4 d2 |
        r4 g4 a4. g8 |
        g4 fis4\fermata r4 fis4 |
        g4 d d8 e fis e |
        d8 c d e fis4 a4 ~ |
	a8 g4 fis4 e8\noBeam d e |
        d2 d2 |
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
        r4 b4 b d |
        d2 r4 d4 |
        c4 d d2 |
        r4 d8 c b4 a4 ~ |
	a8 g4 fis8 g b a g |
        fis4 d'8 c! b cis d c |
        b4 b8 a a b c4 |
        b1 | } %fin du repeat
        r4 d4 e8 d d4 |
        d2 r4 b4 |
        b4 b b2 |
        r4 b8 a g c8 ~ c b8 ~ |
	b8 a8 g fis fis g a4 |
        g2 r4 g8 a |
        b8 a a16 b c8 c4 b4\fermata |
        r4 d8 e ~ e d d4 |
        d2 r4 d4 |
        d4. c8 b c d4 |
        g,8 a b c16 b a4 d |
        d4 d b4. a8 |
        a8 b c4 b2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        r4 g8 fis e4 d |
        g2\fermata r4 g,4 |
        a4 b8 c d2\fermata |
        r4 d4 e fis |
        g4 d e2 |
        d4\fermata fis g d |
        e4 b8 c d2 |
        g,1\fermata | } %fin du repeat
        r4 g'8 fis e fis g4 |
        d2\fermata r4 dis8 b |
        e8 fis g a b2\fermata |
        r4 dis,4 e b |
        c4 g8 a b2 |
        e2\fermata r4 e4 |
        b8 c d4 g,2\fermata |
        r4 g'4 ~ g8 fis g4 |
        d2\fermata r4 c4 |
        b4 fis g d'8 c |
        b8 a g4 d'4\fermata fis |
        g4 d e b8 c |
        d2 g,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "137." }
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

