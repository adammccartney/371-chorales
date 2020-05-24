
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 380" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Meinen Jesum laß ich nicht" }
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
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 
	}

  upper = {
	\time 4/4
	\key es \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        bes4 bes c c |
        d4 d8 es16 f es2\fermata |
        f4 f es es |
        d4 c8 d16 es c2 |
        bes2\fermata bes4 bes |
        c4 c bes aes8 g |
        g2\fermata bes4 bes |
        aes4 aes g f8 g16 aes |
        f2 es2\fermata |
        bes'4 bes c c |
        d4 d8 es16 f es2\fermata |
        bes4 bes8 c16 des c8 bes aes! g |
        f8 g16 aes f4 es2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 g es aes |
        aes8 g aes4 g2 |
        bes4 bes8 aes g4 ~ g8 a |
        bes8 a g es f4. es8 |
        d2 es4 es |
        es4 aes aes8 g f4 |
        e2 e8 f g e |
        c4 f8 d es4 es |
        es4 d bes2 |
        g'4 g aes aes8 g |
        f4 g g2 |
        es4 es es8 d es4 |
        es4 d bes2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key es \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        es4 es c f |
        f8 es f d bes2 |
        d8 es f d d c16 b c4 |
        bes4 bes bes8 g a4 |
        f2 g8 aes! bes g |
        aes8 bes c4 f,8 g aes bes |
        c2 bes8 aes g4 |
        aes4 bes bes c8 aes |
        bes8 g aes4 g2 |
        es'4 es es f |
        b,8 c d b! c2 |
        g4 g aes8 f es bes' |
        c4 bes8 aes g2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        es8 f g es aes g aes f |
        bes4 bes, es2\fermata |
        bes8 c d bes c d es f |
        g8 f es c f4 f, |
        bes2\fermata es8 f g es |
        aes8 g f es d e f4 |
        c2\fermata g'8 f e c |
        f8 es! d bes es g aes f |
        bes4 bes, es2\fermata |
        es'8 des c bes aes g f es |
        d8 c b g c2\fermata |
        es8 des c bes aes bes c bes |
        aes4 bes es2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "299." }
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

