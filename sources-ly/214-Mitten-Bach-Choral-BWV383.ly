
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 383" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Mitten wir im Leben sind" }
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
        \tempo 4 = 40 r1 \tempo 4 = 78 | } %fin du repeat
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 40 r1 |
	}

  upper = {
	\time 4/4
        \key e \phrygian % c \major % a \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 g a b |
        c4 c b2 |
        a2\fermata b4 c |
        d4 a g4 f |
        e1\fermata | } %fin du repeat
\break
        r4 d4 e f |
        g4. f8 e4 d |
        c2\fermata r4 c4 |
        g'4 g a b |
        c4 c b2 |
        a2\fermata b4 c |
        d4 a g f |
        e2\fermata r4 a4 |
        g4 e f g8. f16 |
        e2\fermata r4 a4 |
        g4 e f g |
        e2\fermata a4 g |
        a4 b c b8 a |
        g4 f e4\fermata d |
        a'2 g4 f |
        e2\fermata a4 g |
        a4 b c8 b a4 |
        g2\fermata c4 b |
        d4 a g f |
        e2\fermata r4 d4 |
        a'2 g4 f |
        e1\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e4 e e e |
        e8 fis16 gis a4 a gis! |
        e2 g4 g |
        a8 g f4 ~ f8 e8 ~ e d16 c |
        b1 | } %fin du repeat
        r4 b4 c8 b c4 |
        d8 e ~ e d8 ~ d c8 ~ c b8 |
        g2 r4 g4 |
        c4 ~ c8 e f4 ~ f8 e |
        e8 a16 gis a4 ~ a8 gis!16 fis gis4 |
        e2 gis4 a ~ |
	a8 g8 f4 e4 ~ e8 d |
        cis2 r4 f8 e |
        d4 ~ d8 c d4 d |
        c2 r4 e4 |
        d4 ~ d8 c16 b a4 d8 b |
        c2 e4 e |
        e4 e e8 f g f ~ |
	f8 e8 ~ e d16 c b4 bes |
        c4 f4 ~ f8 e8 ~ e d |
        c2 e4 ~ e8 d |
        c4 d e8 g4 fis8 |
        g2 g4 g |
        a8 g f e d e a, d |
        cis2 r4 d4 |
        d4 c8 d e4 ~ e8 d16 c |
        b1 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key e \phrygian % c \major % a \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        b4 b c b |
        a4. e'8 f d b e16 d |
        c2 d4 e |
        f8 e d4 ~ d8 c16 bes a8 b16 a |
        gis1 | } %fin du repeat
        r4 g4 g c8 a |
        b4 c8 g g4 ~ g8. f16 |
        e2 r4 g4 |
        g4 c c8 d d4 |
        c8 d e4 ~ e8 b e d |
        c2 e4 e |
        d4 ~ d8 c bes4 a |
        a2 r4 c4 ~ |
	c8 b8 a4 a g8 b |
        c2 r4 c4 |
        b4 g f8 e d g |
        g2 c4 b |
        c4 b a d |
        g,8 c16 b a8 b16 a gis4 g |
        a4 d4 ~ d8 b c g |
        g2 c4 c8 bes |
        a8 g f4 g8 e' a, d16 c |
        b2 e4 d8 e |
        f8 e d c b cis d a |
        a2 r4 a8 g |
        f8 e f4 e8 a a b16 a |
        gis1 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        e4 e8 d c b a gis |
        a4. c8 d b e4 |
        a,2\fermata g'8 f e4 |
        d8 e f4 b,8 c d4 |
        e1\fermata | } %fin du repeat
        r4 g!8 f e4 a4 |
        g8 g, a b c4 g |
        c,2\fermata r4 e'8 f |
        e8 d e c f4 gis, |
        a8 b c d e2 |
        a,2\fermata e'4 a8 g |
        f8 e d4 ~ d8 cis d f |
        a2\fermata r4 f,4 |
        g4 a d8 c b g |
        a2\fermata r4 a4 |
        b4 c d b8 g |
        c2\fermata a8 c e d |
        c8 b a gis a4 b |
        c4 d e4\fermata g |
        f8 e d c b g a b |
        c2\fermata c8 d e4 |
        f8 e d4 c d |
        e2\fermata e8 f g4 |
        d8 e f4 ~ f8 e d f |
        a2\fermata r4 f8 e |
        d4 a8 b c cis d4 |
        e1\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "214." }
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

