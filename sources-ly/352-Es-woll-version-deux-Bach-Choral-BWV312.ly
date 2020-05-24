
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 312" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Es woll' uns Gott genädig sein (2)" }
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
        R1 |
        \tempo 4 = 44 r2 \tempo 4 = 88 r2 |
        R1 |
        r2 \tempo 4 = 44 r4 \tempo 4 = 88 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 44 r4 \tempo 4 = 88 r4 |
        R1 |
        r2 \tempo 4 = 44 r4 \tempo 4 = 88 r4 |
        R1 |
        r2 \tempo 4 = 44 r4 \tempo 4 = 88 r4 |
        R1 |
        r2 \tempo 4 = 44 r4 \tempo 4 = 88 r4 |
        R1 |
        R1 |
	\tempo 4 = 44 r2. 
	}

  upper = {
	\time 4/4
	\key e \phrygian % c \major % a \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        b4 |
        c4 b a b8 c |
        d4 e d c |
        b2\fermata r4 d |
        c4 b c8 b a4 |
        g4 f e\fermata } %fin du repeat
        g!4 |
        f4 e d e8 d |
        c8 d d4 e\fermata b' |
        c4 b8 a g4 a8 b |
        c4 d b\fermata e |
        d8 c b c d4 a |
        g4 f e\fermata d |
        g4 a b8 c d4 |
        c4 b a\fermata c |
        b4 a g8 f e f |
        g4 f e2 ~ |
	e2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        gis4 |
        a8 e f e8 ~ e d8 g4 ~ |
	g8 f8 g e f4 e8 dis |
        e2 r4 f |
        e8 fis g4 g f |
        e4. d16 c b4 } %fin du repeat
        e8 d |
        c8 d8 ~ d c a g ~ g gis8 |
        a4. b8 c b\fermata e4 |
        e8 a g f e4 d |
        c8 e a4 a8 gis g fis |
        g4 g g4. f!8 |
        e4. d8 d cis\fermata a b |
        c4 c b8 e d e |
        e8 a8 ~ a gis a4 g!8 a |
        b8 g e f b, d g f |
        f8 e e d d e16 d c4 |
        b2.
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key e \phrygian % c \major % a \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e4 |
        e8 c d e a,4 g |
        a4 bes a8 gis a4 |
        a4 gis\fermata r4 a8 b |
        c4 d e8 d c4 |
        bes8 a4 b8 gis4 } %fin du repeat
        b4 |
        a8 g8 ~ g a f4 e |
        e4 a a8 gis gis4 |
        a16 b c4 d8 e e, fis gis |
        a4. f'8 e4 g,8 a |
        b8 c d4 d d |
        e8 a, a4 a f |
        e4. fis8 g4 a8 b |
        c8 e f e c4 e |
        d4 cis8 d e b c4 |
        d8 a a b8 ~ b e, a4 |
        a4 gis8 fis gis4\fermata
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        e4 |
        a4. g8 f4. e8 |
        d4. cis8 d4 a |
        e'2\fermata r4 d |
        a'4 g8 f e4 f8 e |
        d8 cis d4 e\fermata } %fin du repeat
        e4 |
        a,8 b c4 ~ c8 b8 c b |
        a8 g f4 e\fermata e' |
        a,4. b8 c4. b8 |
        a8 a' f d e4\fermata c |
        g'4 g,8 a b c d4 ~ |
	d8 cis8 d4 a\fermata d |
        c8 b a4 e' fis8 gis |
        a8 c, d e f4\fermata e8 fis |
        g4. f!8 e d c a |
        b8 cis d gis, a b c d |
        e2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "352." }
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
      tempoWholesPerMinute = #(ly:make-moment 88 4)
		}
	    }
	}

