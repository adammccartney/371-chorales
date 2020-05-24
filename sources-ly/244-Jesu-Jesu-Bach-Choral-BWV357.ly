
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 357" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Jesu, Jesu, du bist mein" }
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
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
        \key c \dorian % bes \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4. c8 b4 c |
        d4 es8 d d2\fermata |
        es4 c f es |
        d4 d8. es16 c4 c4\fermata |
        g4 g c bes |
        aes4 g8 f f2\fermata |
        bes4 g c8 d es4 |
        g,4 f8 es es4 es4\fermata |
        g4. a!8 b4 b |
        c4 d b b4\fermata |
        c4 d es c |
        f4 es d d\fermata |
        c4 g aes g |
        g4. f8 g2\fermata |
        c4 g aes8 g f es16 d |
        es4 d8 c c2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        es4 g f g |
        g4 g g2 |
        g4 g f8 g aes4 ~ |
	aes8 d,8 g f es4 es |
        es8 f g4 c,8 d es4 |
        f4 es d2 |
        f4. es8 es f g f |
        es4 d bes bes |
        es4 es f g |
        g4 aes g g |
        g4 g g g |
        f4 g g g |
        g4 g4 ~ g8 f4 es8 |
        es8 d c4 d2 |
        g8 f g es f4 c |
        c4 b g2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key c \dorian % bes \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        c4 c d es |
        d4 c c b4\fermata |
        c4 es8 d c4 c |
        c4 b g g |
        c4 d es bes |
        bes4 bes bes2 |
        bes4 bes c8 bes ~ bes c |
        bes4 bes8. aes16 g4 g |
        bes4 c8 es d4 d |
        es4 f d d |
        es4 d c8 d es d |
        c4 c c b |
        c4 es c b |
        c8 b c4 b2 |
        c4 c c aes |
        g4 g8. f16 e2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        c4 es d c |
        b4 c g2\fermata |
        c4 c'8 bes! aes4. g8 |
        f4 g c,2\fermata |
        c'4 bes aes g8 f |
        es8 d es4 bes2\fermata |
        d8 bes es4 aes, g8 aes |
        bes8 aes bes4 es,2\fermata |
        es'8 d es c d aes' g f |
        es8 c f, f' g g, g'8_\markup { \tiny "fermata?" } f8 |
        es8 d c b c g' c bes! |
        aes4 g8 f g4 g,\fermata |
        es'4 c f g |
        aes2 g2\fermata |
        es8 d es c f g aes f |
        g4 g, c2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "244." }
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

