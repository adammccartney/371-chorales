
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 423" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Was betrübst du dich, mein Herze" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
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
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key g \dorian % f \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        d4 c bes a |
        bes4 a8 g fis4 d4\fermata |
        d'4 d es c |
\break
        d4 c8 bes a2\fermata |
        d4 c bes a |
        bes4 a8 g fis4 d4\fermata |
\break
        d'4 d es c |
        d4 c bes2\fermata |
        d4 es f d |
\break
        es4 d d8 c c4\fermata |
        c4 d es d |
        c4. bes8 a4 f4\fermata |
\break
        d'4 a bes a |
        bes4 c d2\fermata |
        d4 d c bes |
        a4. g8 g2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g8 a16 bes a4 ~ a8 g8 ~ g fis |
        d8 g16 f es4 d a |
        bes8 c d4 g,4 g'4 |
        a4. g8 fis2 |
        fis4 g8 a ~ a g8 ~ g fis! |
        g8 f! e!4 d a |
        bes8 d f4 g4. f8 |
        f4 f8. es16 d2 |
        f4 g f g8 f |
        es8 c f4 f f |
        f4 f g8 fis g4 |
        g8 fis g4 f c |
        a'8 g a4 ~ a8 g8 ~ g fis |
        g4 g fis2 |
        g4 g4 ~ g8 fis g4 ~ |
	g8 fis16 e fis4 d2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \dorian % f \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        bes8 c16 d es8 d d4 ~ d8. c16 |
        bes8 d c bes a4 fis |
        g4 g'8 f8 es16 d c8 ~ c8 bes |
        a8 d d4 d2 |
        a4 g8 d' d4 d |
        d4 e!8 a, a4 fis |
        f!8 bes d c bes4 c ~ |
	c8 bes8 ~ bes8 a f2 |
        d'8 c bes4 ~ bes8 a bes4 ~ |
	bes8 a8 bes4 ~ bes8 a a4 |
        a4 bes4 ~ bes8 a bes4 |
        c4 c c a |
        a4 d d d |
        d4 es a,2 |
        bes4 d es8 d e4 |
        a,8 d d8. c16 bes2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g4. fis8 g4 d |
        g,4 c d d,\fermata |
        g8 a bes g c d es4 |
        fis,4 g d'2\fermata |
        d4 e!8 fis g4 d |
        g4 cis, d d,\fermata |
        bes'4 bes'8 a g4 a |
        bes4 f bes,2\fermata |
        bes'8 a g4 d g |
        c,4 d8 es f4 f,\fermata |
        f'8 es d4 c g'8 f |
        es4 e f f,\fermata |
        fis'8 e fis d g4 d |
        g8 f! es4 d2\fermata |
        g4 bes, c cis |
        d4 d, g2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "237." }
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

