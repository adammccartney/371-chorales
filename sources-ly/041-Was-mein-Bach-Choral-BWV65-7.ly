
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 65.7" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Was mein Gott will, das g'scheh allzeit" }
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
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key a \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e4 |
        g4 a g c |
        c4 b c\fermata c |
        b4 a d4. c8 |
        b4 c b2 |
        a2.\fermata } %fin du repeat
        a4 |
        a4 a b4. a8 |
        b4 g g fis |
        g4\fermata g a b |
        c4 b a2 |
        b4\fermata e,8 fis g4 a |
        g4 c c b |
        c4\fermata c b a |
        d4. c8 b4 c |
        b2 a4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        c4 |
        e8 d c d e f g4 |
        g4 g g g |
        g4 f8 g a2 |
        gis4 a2 gis4 |
        e2. } %fin du repeat
        e4 |
        d8 e fis4 g4. a8 |
        g4 e e d |
        d4 e fis f |
        e8 fis gis4 a4. dis,8 |
        e4 b e fis |
        e4 e a g |
        g4 a a8 g g f |
        f4. e8 d4 c8 d |
        e2 e4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key a \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        a4 |
        b4 a8 b c4 c8 d |
        e8 d16 c d4 e e |
        d4 d a e' ~ |
	e4 e4 e4. d8 |
        c2. } %fin du repeat
        c8 b |
        a4 d d4. dis8 |
        e4 b a a |
        b4 c a4 d |
        c8 d e4 e8 d c fis, |
        gis4 g8 a b4 c |
        b4 c d d |
        e4 e f8 e e d |
        d8 c b a e'2 ~ |
        e8 a, gis4 cis4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        a4 |
        e'4 f c8 d e f |
        g4 g, c\fermata c |
        g'4 d8 e f g a4 |
        e8 d c a e'2 |
        a,2.\fermata } %fin du repeat
        a'8 g |
        fis4 e8 d g d g fis |
        e8 b e d c a d4 |
        g,4\fermata c c'8 b a gis |
        a4 e8 d c b a4 |
        e'4\fermata e e dis |
        e4 a8 g fis4 g |
        c,4\fermata a d8 e f4 |
        b,8 c d4 gis,8 e' c a |
        e'2 a,4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "41." }
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

