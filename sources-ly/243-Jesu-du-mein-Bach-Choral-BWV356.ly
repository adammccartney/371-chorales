
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 356" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Jesu, du mein liebstes Leben" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        R2. |
        R2. |
        R2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 | } %fin du repeat
        R2. |
        R2. |
        R2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. |
	}

  upper = {
	\time 3/4
	\key g \minor
	\clef treble

	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g2 a4 |
        bes4 c d |
        c2 bes4 |
        a2 g4\fermata |
\break
        d'4 es f |
        bes,4 c d |
        c2 c4 |
        bes2.\fermata | } %fin du repeat
\break
        a2 g4 |
        a4 bes c |
        bes2 a4 |
        g2 f4\fermata |
\break
        bes2 a4 |
        bes4 c d |
        d2 c4 |
        d2.\fermata |
\break
        a2 d4 |
        g,4 a bes |
        a2 a4 |
        g2.\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d2 a'4 ~ |
	a8 g8 f es d4 |
        g4 a4 ~ a8 g |
        g4 fis d |
        bes'4 a8 g f4 |
        g4 f8 es d4 |
        g4 es8 g f es |
        d2. | } %fin du repeat
        f2 g4 ~ |
	g8 f8 e d c4 |
        f4 g4 ~ g8 f8 ~ |
	f4 e4 c |
        f4 g d ~ |
	d8 g8 f es d4 |
        g8 fis g bes a g |
        fis2. |
        fis2 fis4 |
        g4 d d |
        es4 c d8 c |
        b2. |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key g \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        bes2 d4 |
        d4 c bes4 ~ |
	bes4 a4 bes8 d |
        es!8 a, d c bes4 |
        f'4 es d4 ~ |
	d4 c4 bes4 ~ |
	bes4 a8 g a4 |
        bes2. | } %fin du repeat
        c2 c4 |
        c4 bes a4 ~ |
	a4 g4 a8 c |
        d8 g, c bes a4 |
        d4 c4 ~ c |
        bes8 es d c bes4 ~ |
	bes8 a8 bes4 es |
        a,2. |
        d2 d4 |
        d4 a g |
        g2 fis4 |
        d2. |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        g4 g' fis |
        g4 a bes |
        e,4 fis g |
        c,4 d g,\fermata |
        bes4 c d |
        g,4 a bes |
        es4 c f |
        bes,2.\fermata | } %fin du repeat
        f4 f' e |
        f4 g a |
        d,4 e f |
        bes,4 c f,\fermata |
        d'4 e fis |
        g4 a bes |
        es,!2. |
        d2.\fermata |
        d8 d, d' c bes a |
        bes8 a g fis g4 |
        c4 a d |
        g,2.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "243." }
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

