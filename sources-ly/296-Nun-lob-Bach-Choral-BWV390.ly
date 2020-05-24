
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 390" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Nun lob, mein Seel, den Herren" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        r4 r4. \tempo 4 = 30 r8 |
        r2 } %fin du repeat
        r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        \tempo 4 = 34 r2 
	}

  upper = {
	\time 3/4
	\key c \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        c4 |
        c2 b4 |
        a2 g4 |
        c4 d2 |
        e2\fermata e4 |
        e2 e4 |
        e2 d4 |
        c8 d d4.\trill c8\fermata |
        c2 } %fin du repeat
        c4 |
        c4 d e |
        d2 e4 |
        c4 b8 a b4 |
        a2\fermata a4 |
        d4 c b |
        c4 a2 |
        g2\fermata g4 |
        c2 c4 |
        d4 e f |
        e4 d e |
        c2\fermata c4 |
        f2 f4 |
        e4 d e |
        d2\fermata d4 |
        e2 e4 |
        f2 f4 |
        g4. f8 e d |
        c2\fermata e4 |
        d4 c b |
        c4 a2 |
        g2\fermata g4 |
        c2 b4 |
        a2 g4 |
        d'4 e4. d8 |
        d2\fermata e4 |
        f4 e d |
        c8 d d4.\trill c8 |
        c2\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 |
        a2 g4 |
        c,4 d e8 f |
        g4 a g |
        g2 g4 |
        b4 a gis |
        a4 e8 f g4 |
        g4 a g |
        e2 } %fin du repeat
        e4 |
        f2 e4 |
        gis4 a b |
        a2 gis4 |
        a2 f8 e |
        d2 d4 |
        e4 d c |
        b2 e4 |
        d2 a'4 |
        g2 g4 |
        g4 f e |
        e2 a4 |
        a2 a4 |
        bes4 f g |
        f2 g4 |
        g2 a4 |
        f4 a2 |
        g2. |
        a2 g4 |
        a2 g4 |
        g2 fis4 |
        d2 d4 |
        e4 f g |
        c,4 d e |
        f4 e8 d e fis |
        g2 g4 |
        f4 g2 |
        g4 a g |
        e2
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key c \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e4 |
        e4 f g |
        f2 e4 |
        c2 b4 |
        c2 c4 |
        b4 c d |
        c2 b4 |
        c2 b4 |
        g2 } %fin du repeat
        g4 |
        a4 b c |
        d8 e f4 e |
        e2 d4 |
        c2 c4 |
        a2 g4 |
        g4 fis2 |
        g2 b4 |
        c4 d e |
        d4 c b |
        c2 b4 |
        c2 f4 |
        a,2 d4 |
        d2 cis4 |
        a2 b4 |
        c2 c4 |
        a2 d4 |
        d4 b c |
        c2 c8 b |
        a2 d4 |
        c4 e d8 c |
        b2 b4 |
        g4 d' e |
        a,4 b c |
        b4 c a |
        b2 c4 |
        c2 b4 |
        c2 b4 |
        g2
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        c4 |
        a2 e4 |
        f2 c4 |
        e4 f g |
        c,2\fermata c'4 |
        gis4 fis e |
        a4 g! f |
        e4 f g |
        c,2\fermata } %fin du repeat
        c4 |
        f2 c'4 |
        b4 a gis |
        a4 e2 |
        f2\fermata f4 |
        fis2 g4 |
        c,4 d2 |
        g,2\fermata e'4 |
        a4 b c |
        b4 a g |
        c2 gis4 |
        a2\fermata f4 |
        d4 e f |
        g4 a2 |
        d,2\fermata g4 |
        c,4 b a |
        d4 c b |
        e4 d c |
        f2\fermata c'4 |
        fis,2 g4 |
        e4 c d |
        g,2\fermata g'8 f |
        e4 d c |
        f2 e4 |
        d4 c2 |
        g'2\fermata c4 |
        a4 g f |
        e4 f g |
        c,2\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "296." }
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

