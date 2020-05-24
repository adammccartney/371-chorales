
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 285" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Da der Herr Christ zu Tische saß" }
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
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key c \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 |
        g4 g bes g |
        bes4 b c\fermata d |
        es8 d c d es4 d |
        c4 c b\fermata g |
        c8 d es4 d c |
        b2 c4\fermata g |
        g4 a bes aes |
        g4 f es\fermata es |
        bes'4 bes c d |
        es4 d es\fermata es |
        f4 es d c |
        c4 b4 c2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        es8 f8 |
        g8 f es4 f4 ~ f8 es8 |
        g4 f es g |
        g4 g g g |
        g4 g8 f g4 d |
        g4 g aes!8 g g8 f |
        g8 aes g f es4 es8 f |
        g4 f f8 g8 ~ g8 f8 ~ |
	f8 es8 ~ es8 d es4 c |
        es8 f g4 es f |
        g4 f g g8 aes ~ |
	aes8 g8 g4 f8 aes g f |
        es8 d16 c d8 f8 ~ f8 e4.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key c \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        c4 |
        d4. c8 bes!4 bes4 |
        bes8 c d4 g, d' |
        c8 d es d c4 b |
        c8 b c4 d b! |
        c4 c4 ~ c8 b c4 |
        d4 g, g c |
        c8 g c4 d8 c8 ~ c8 d16 c16 |
        bes8 c f, bes16 aes g4 g8 aes |
        bes8 aes bes des c bes aes4 |
        bes4 bes bes c |
        d4 ~ d8 c8 ~ c b8 c aes |
        g2 g2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        c4 |
        b4 c d es ~ |
	es4 d4 c\fermata b |
        c2 ~ c8 es g f |
        es4 aes g\fermata g8 f |
        es8 d c4 f8 g aes4 |
        g4 g, c\fermata c8 d |
        es4. f16 es d8 es f4 |
        g8 aes bes bes, c4\fermata c |
        g8 f es4 aes8 g f4 |
        es8 g bes4 es\fermata c ~ |
	c8 b8 c4 d es8 f |
        g4 g, c2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "196." }
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

