
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 226.2" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Komm, heiliger Geist, Herre Gott" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 30 r2 \tempo 4 = 78 r2 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
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
        d4 |
        e4 d8 c b c d4 |
        a2\fermata b4 cis |
        d2\fermata r4 d4 |
        e4 d a8 b c4 |
        b4 a g\fermata g |
        a8 b c4 b8 c d4 ~  |
        d4 a g8 fis e4 |
        d2\fermata r4 d4 |
        g4 a b8 c d4 ~  |
        d4 c b a |
        b2\fermata r4 b8 c |
        d4 e d a |
        b4 cis d\fermata d |
        e4 d a8 b c4 |
        b4 a g\fermata g |
        a8 b c4 b8 c d4 ~  |
        d4 a g8 fis e4 |
        d2\fermata r4 d4 |
        g4 a b8 c d4 ~  |
        d4 c b a |
        e4 fis g\fermata a |
        b4 g e2 |
        d4\fermata a'8 b16 c b2 |
        a2 g4\fermata
        \bar "|."
	} % fin de relative
   
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 |
        g4 fis g d8 e |
        fis2 g4 g |
        fis2 r4 g4 |
        g4 fis8 e d4 e8 fis |
        g4 fis d d |
        d4 e d8 e fis4 ~  |
        fis8 g fis e d b cis4 |
        a2 r4 a4 |
        d8 e fis4 g4. a8 |
        b4. a8 g fis e4 |
        dis2 r4 g4 |
        fis8 gis a4 a8 g fis e |
        d4 e fis g8 fis |
        e8 fis g4 fis e |
        d8 e fis4 d e |
        e4 e8 fis g2 ~  |
        g4 fis g8 d ~ d cis |
        a2 r4 d8 c! |
        b8 e d c b4. c16 d |
        e4 e e e8 d |
        c2 b4 d |
        d2 ~ d8 b c4 |
        b4 d2 e4 ~  |
        e4 d8 c b4 
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
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        b4 |
        c8 b a4 g g |
        d'2 d4 g, |
        a2 r4 g4 |
        c8 b a g fis g c,4 |
        d4 d'8 c b4 b |
        a4 g8 a b4 a8 g |
        a4 d d a8 g |
        fis2 r4 fis4 |
        g4 c d8 c b a |
        gis8 fis! e4 dis e |
        fis2 r4 g8 a |
        b4 cis d4. c8 |
        b8 a g4 a b |
        c4 d d g,8 a |
        b8 g d' c b4 c |
        c8 b a4 b8 a g a |
        b8 cis d2 a8 g |
        fis2 r4 fis4 |
        g8 c b a g4. a8 |
        b4. a8 g fis e4 |
        a2 g4 fis |
        g2. g8 fis |
        g4 a2 g4 ~  |
        g4 fis16 e fis8 d4 
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g4 |
        c,4 d e b8 c |
        d2\fermata g8 fis e4 |
        d2\fermata r4 b4 |
        c4 d c8 b a4 |
        b8 c d4 g,\fermata g' |
        fis4 e8 fis g4 fis8 e |
        fis8 e d cis b g a4 |
        d2\fermata r4 d8 c! |
        b8 c b a g4 g'8 f |
        e4 a, b c |
        b2\fermata r4 e4 |
        b'4 a8 g fis e d4 |
        g8 fis e4 d\fermata g |
        c,4 b8 c d4 e8 fis |
        g8 c, d4 g,\fermata c8 b |
        a4 a' e b8 c |
        d8 e fis d b' g a4 |
        d,2\fermata r4 b4 |
        e4 fis g8 a b a |
        gis8 e a4 e8 d c b |
        c8 a d4 g,\fermata d' |
        g,8 a b4 c2 |
        g'4\fermata fis g8 fis e d |
        c8 a d4 g,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "69." }
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

