
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 10.7" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Meine Seel erhebt den Herren" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        R1 |
        R1 |
        R1 |
        \tempo 4 = 64 r1 \tempo 4 = 128 |
        R1 |
        R1 |
        R1 |
        \tempo 4 = 64 r1 \tempo 4 = 128 |
        R1 |
        R1 |
        R1 |
        R1 |
        \tempo 4 = 64 r1 \tempo 4 = 128 |
        R1 |
        R1 |
        R1 |
        R1 |
        R1 |
        R1 |
        R1 |
        \tempo 4 = 64 r1 \tempo 4 = 128 |
	}

  upper = {
	\time 4/4
	\key g \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        d2 f |
        d4 d d d |
        es2 d |
        c2 c |
        bes1\fermata |
        d2 f |
        c4 c c g |
        bes2 a |
        g1\fermata |
        d'2 f |
        d4 d d d |
        es2 d |
        c2 c |
        bes1\fermata |
        d2 f |
        c4 c c c |
        c2 g4 a |
        bes2 a |
        g1 ~ |
        g1 ~ |
        g1 ~ |
        g1\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g2 f |
        f4 fis g a |
        g4 f2 g4 |
        g2 f |
        f1 |
        f1 |
        f4 f es g |
        g2 fis |
        d1 |
        g2 a |
        f2. fis4 |
        g4 a bes2 ~ |
	bes4 bes4 bes a |
        f1 |
        R1 |
        f4 g a bes |
        c2 c, |
        d2 d4 c |
        b4 d g f |
        es1 ~ |
        es2 d4 c |
        d1 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \minor
	\time 4/4
	\key g \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        bes2 c |
        d4 c bes a |
        bes4 c2 bes4 |
        bes2 a |
        d1 |
        bes1 |
        a4 c g c |
        d2. c4 |
        bes1 |
        bes2 c |
        d4 c bes4 a |
        bes4 c4 f,4 f' |
        g2 f4 c |
        d1 |
        r2 f,4 g |
        a4 bes c2 ~ |
        c4 d4 e fis |
        g2 f!4 es |
        d4 b c d4 ~ |
        d4 g,4 c2 ~ |
        c2 b4 a |
        b1 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g2 a |
        bes4 a g fis |
        g4 a bes g |
        es4 c f2 |
        bes,1\fermata |
        bes'2 d, |
        f4 a c es, |
        d4 c d2 |
        g,1\fermata |
        g'2 f |
        bes4 c d2 ^~
        d4 c4 bes4 d, |
        es4 c f2 |
        bes,1\fermata |
        bes4 c d es |
        f2. g4 |
        a4 bes c2 |
        bes,4 c d es |
        f2 es4 d |
        c4 d es f |
        g1 |
        g,1\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "358." }
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
      tempoWholesPerMinute = #(ly:make-moment 128 4)
		}
	    }
	}

