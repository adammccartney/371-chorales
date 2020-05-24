
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 85.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Ist Gott mein Schild und Helfersmann" }
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
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
        \key c \dorian % bes \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 |
        c4 b c d8 es |
        bes4. aes8 g4\fermata g |
        f4 bes g c |
        b4. c8 d4\fermata es |
        d8 c bes aes g4 aes!8 bes |
        f2 es4\fermata es'4 |
        d4 c8 bes bes4 c |
        bes4 aes8 g g4\fermata f |
        bes4. aes8 g4 es'8 d |
        b4. c8 d4\fermata es |
        f8 es d c b4 c8 d |
        d4. c8 c4\fermata es |
        es8 d c b g'4 c,8 a |
        b4. c8 c4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        es8 f |
        g4 g g f8 es |
        f4 d es es |
        c4 bes8 f' es d c g' |
        f8 es es g16 fis g4 g |
        f4. d8 es4 es |
        es4 d bes g' |
        f4 es8 f g4 aes8 g |
        f8 es f d es4 d |
        e4 f d g |
        f8 d es g16 fis g4 g |
        f8 g aes4 aes g8 aes! |
        g4 f8 es es4 aes |
        aes4 aes8 g g4 g8 f |
        d8 es16 f g4 g4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key c \dorian % bes \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        c4 |
        c4 d es g, |
        f4 bes bes bes |
        aes8 g f bes bes g' f es |
        d4 g,8 a! b4 c8 bes |
        aes8 f bes4 bes aes!8 g |
        c4 bes8 aes g4 bes |
        aes8 bes c d es4 aes, |
        bes8 c d4 bes bes4 |
        bes4 c b c |
        d4 g,8 a! b4 c4 |
        c4 f f es8 c |
        c8 a! b4 c c |
        c8 f es d c b c d |
        g,4 d' e
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        c4 |
        es4 g c c, |
        d4 bes es\fermata es |
        es4 d es aes! |
        d,4 c g' c4 |
        f,8 es d bes es d c bes |
        aes4 bes es\fermata es |
        f8 g aes!4 g f8 es |
        d8 c bes4 es\fermata bes'8 aes |
        g4 f2 es4 |
        d4 c g' c8 bes |
        aes8 g f es d4 es8 f |
        g4 g, aes\fermata aes'8 g |
        f4 f es8 d es f |
        g4 g, c4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "122." }
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

