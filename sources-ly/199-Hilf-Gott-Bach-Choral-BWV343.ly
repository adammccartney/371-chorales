
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 343" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Hilf, Gott, laß mirs gelingen" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 } %fin du repeat
        r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 
	}

  upper = {
	\time 3/4
        \key g \dorian % f \major
	\clef treble
        \partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 |
        a2 g4 |
        f2 d4 |
        f2. |
        g2\fermata a4 |
        bes2 d4 |
        c2 bes4 |
        a2. |
        g2\fermata } %fin du repeat
        c4 |
        c2 c4 |
        d2 c4 |
        bes4 a g |
        f2\fermata f4 |
        bes2 a4 |
        bes2 c4 |
        d2 c4 |
        bes4. a8 g4 |
        fis2\fermata a4 |
        bes2 d4 |
        c2 bes4 |
        a2. |
        g2\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d8 e |
        f2 ~ f8 e |
        d4 a bes |
        c8 es d c b4 |
        e2 e8 fis |
        g8 fis g2 ~ |
	g4 ~ g8 fis8 g4 |
        g2 fis4 |
        d2 } %fin du repeat
        g4 ~ |
	g8 f ~ f8 e f4 ~ |
	f8 e8 f g a g |
        f2 ~ f8 e |
        c2 d4 |
        g2 a4 ~ |
	a8 d,8 g4 a |
        bes8 a g4. fis8 |
        g4 d4. c8 |
        d2 fis!4 |
        g2 f!4 |
        e!8 d e fis g4 |
        g2 fis4 |
        d2
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key g \dorian % f \major
	\clef bass
        \partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        bes4 |
        c2 ~ c8. bes16 |
        a4 f4. g8 |
        a2 g8 f |
        c'2 c4 |
        d4. c8 bes a |
        g8 fis g a d4 |
        es4 d8 a d c |
        bes2 } %fin du repeat
        c8 bes |
        a4 bes c4 ~ |
	c4 bes4 c |
        d2 g,8 c |
        a2 bes8 c |
        d8 bes es4. d8 |
        d2 es4 |
        f4 es8 d es c |
        d8 es f f, g4 |
        a2 d4 ~ |
	d8 bes8 es4 d8 bes |
        g4 c8 a bes d |
        es8 d c bes c a |
        b2
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        g4 |
        f2 c4 |
        d2 bes4 |
        a2 d4 |
        c2\fermata a4 |
        g2 bes4 |
        es2 d4 |
        c4 d d, |
        g2\fermata } %fin du repeat
        e'!4 |
        f4 g a |
        bes2 f8 e |
        d8 c bes4 c |
        f,2\fermata bes8 a |
        g4 g' fis |
        g4 f!8 es d c |
        bes4 bes' a |
        g4 f es |
        d2\fermata d4 |
        g4. es8 bes'4 ~ |
	bes4 a4 g |
        c,4 a d |
        g,2\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "199." }
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

