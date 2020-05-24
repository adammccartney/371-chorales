
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 350" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Mein Hüter und mein Hirt ist Gott der Herre" }
                     \line { \italic "old: Ich danke dir, o Gott, in deinem Throne" }
                 } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key g \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 |
        g4 g f8 es d4 |
        f4 g a g |
        g4 fis g\fermata bes |
        a4 g f d |
        f4 g a g |
        g4 fis g4\fermata d' |
        d4 d g, c |
        c4 bes a g |
        f2 d4\fermata g |
        g4 fis g fis |
        g4 fis g a |
        bes2 a4\fermata bes |
        a4 g f d8 es |
        f4 f g f |
        es2 d4\fermata d' |
        c4 bes a fis! |
        g4 a8 bes c4 bes |
        a2 g4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 |
        g8 f es d c4 ~ c8 bes |
        d4 es8 d es4 d |
        es4 d d g |
        g8 fis g es c4 c8 bes16 c |
        d8 c bes4 es8 d e4 |
        d4 d d g |
        g4 ~ g8 fis g4 g |
        d4 d ~ d8 c bes d |
        c8 bes c4 bes d |
        d8 es d c bes c d4 |
        d4 c d d |
        d2 d4 d |
        d8. c16 bes4 c bes |
        a8 bes16 c d es f8 ~ f8 es8 ~ es d8 ~ |
	d8 c16 b c4 b g'4 ~ |
	g8 fis8 g4 ~ g8 fis16 e d4 ~ |
	d8 e8 fis g a4. g8 ~ |
	g8 fis16 e fis4 d
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        bes8 c |
        d4 bes a8 g f4 |
        bes4 bes c4 ~ c8 bes |
        a4 ~ a16 bes c8 ~ c bes8\fermata d4 |
        d8. c16 bes4 c8 a f4 |
        bes8 a g4 c bes4 ~ |
	bes8 a16 g a bes c8 bes4 bes8 c |
        d8 c16 bes a8 bes16 c bes2 |
        a4 ~ a8 g8 ~ g fis g8 bes |
        a8 g a4 f bes8 c |
        d8 c16 bes a4 g a |
        g4 a bes a ~ |
	a4 g4 fis g ~ |
	g8 fis8 g es c8 f f4 |
        f8 g16 a bes4 bes bes8. a16 |
        g2 g4 bes! |
        c4 d d a |
        bes4 c8 d es d d4 |
        es8 c a d b4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        g8 a |
        bes4 g a bes4 ~ |
	bes8 a8 g4 ~ g8 fis g4 |
        c4 d g,\fermata g |
        d'4 es a,8 f bes4 ~ |
	bes4 es8 d c4. cis8 |
        d2 g,4\fermata g8 a |
        bes8 c d4 es! e |
        fis4 g4 d es! |
        a,4 f bes4\fermata g8 a |
        bes8 c d4 es! d8 c |
        bes8 c bes a g8 a g fis |
        g8 a bes g d'4\fermata g, |
        d'4 es a, bes8 c |
        d4 d es bes |
        c8 d es c g'4\fermata g, |
        a4 bes8 c d4. c8 |
        bes4 a8 g fis4 g |
        c4 d g,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "229." }
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

