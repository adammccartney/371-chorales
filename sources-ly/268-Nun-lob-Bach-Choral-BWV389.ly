
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 389" }
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
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        R1 |
        \tempo 4 = 40 r2. 
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
	\repeat volta 2 {
        c4 |
        c4 b a g |
        c4 d e\fermata e4 |
        e8 d e4 e d |
\break
        c8 d d4\trill c4\fermata } %fin du repeat
        c4 |
        c8 d e4 d e |
        c4 b a\fermata a |
\break
        d8 c b4 c8 b a4 |
        g4\fermata g c4 c |
        d4 d e8 d e4 |
\break
        c4\fermata c f f |
        e8 d e4 d\fermata d |
        e4 e f f |
\break
        g8 f16 e f8 g c,4\fermata e |
        d8 c b4 c8 b a4 |
        g4\fermata g c b |
\break
        a4 g d' e |
        d4\fermata e4 f e |
        d4 c8 d e4 d |
        c2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 |
        a4 g g8 f e f |
        g4 a8 g g4 g |
        g8 a b4 a4. g8 |
        g8 a g f e4 } %fin du repeat
        e4 |
        f4 c' g8 f e4 |
        e2 e4 e |
        d4 d g8 e fis4 |
        d4 d g8 f e4 |
        a8 f g4 g8 f g4 |
        f4 g f8 g a4 |
        bes4 e, f g |
        g4 a a bes |
        bes4 a8 g f4 g |
        a4 g g8 e fis4 |
        d4 d a' d,8 e |
        f!4 g a4. b16 c |
        g4 b a g8 a |
        b4 c2 b4 |
        g2.
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
	\repeat volta 2 {
        e4 |
        e4 e8 d c4 c |
        c4. b8 c4 c8 d |
        e8 f e d c4. b8 |
        c4 b g4 } %fin du repeat
        g4 |
        a4 g8 a b4 b |
        b8 a4 gis8 c4 c8 b |
        a4 g g d'8 c |
        b4 b8 a g4 c |
        c4 b c bes |
        a4 c d8 e f4 |
        g4 cis, a b |
        c4 c d d |
        e8 d c bes a4 c8 b |
        a4 d g, d'8 c |
        b4 b e,8 fis g4 |
        d'4 d8 c c b c4 |
        b4 e8 d c d e f |
        g8 f e f g4. f8 |
        e2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        c8 b |
        a4 e f c8 d |
        e4 f8 g c,4\fermata c |
        c'4 gis a8 g f g |
        e8 f g4 c,\fermata } %fin du repeat
        c4 |
        f4 e8 f g4 gis |
        a4 e a,4\fermata a'8 g |
        fis4 g8 fis e c d4 |
        g,4\fermata g'8 f e4 a8 g |
        f8 d g4 c,4. d16 e |
        f4\fermata e d d'4 |
        g,8 bes a4 d,\fermata g |
        c8 b a g f e d4 |
        c4 d8 e f4\fermata c' |
        fis,4 g e8 c d4 |
        g,4\fermata g a b8 c |
        d4 e f fis |
        g4\fermata gis a8 b c4 |
        f,8 g a4 g8 f g4 |
        c,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "268." }
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

