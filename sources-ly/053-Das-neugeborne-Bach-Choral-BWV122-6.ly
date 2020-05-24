
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 122.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Das neugeborne Kindelein" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
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
        g4 g g |
        d'4. c8 bes4 |
        d4 c bes |
        a2.\fermata |
        d4 d4 e |
        f2 e4 |
        d4 cis2 |
        d2.\fermata |
\break
        d4 c a |
        bes4. c8 d4 |
        c4 bes a |
        bes2.\fermata |
        f'4 g f |
        d4. c8 bes4 |
        a4 g fis |
        g2.\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 g8 a bes4 |
        a2 g4 |
        g4 fis g |
        fis2. |
        g8 a bes4 bes |
        a2 g4 |
        f4 e2 |
        fis2. |
        g4 es! d |
        d4 g f |
        g4 f f |
        f2. |
        bes4 bes a |
        a2 g4 |
        es4 d4 d4 |
        d2. |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key g \minor
	\clef bass
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        bes4 d d |
        d2 d8 c |
        bes4 c d |
        d2. |
        d4 g g |
        f4 b, cis |
        d4 a2 |
        a2. |
        bes4 a a |
        g4 es' d |
        es4 d c |
        d2. |
        d4 c c |
        a4 d d |
        c4 bes a |
        b2. |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g8 a bes4 a8 g |
        fis2 g4 |
        bes,4 a g |
        d'2.\fermata |
        bes'4 a8 g cis,4 |
        d2 e4 |
        f8 g a4 a, |
        d,2.\fermata |
        g4 g' fis |
        g4. a8 bes4 |
        es,4 f4 f, |
        bes2.\fermata |
        bes'4 es, f |
        fis2 g4 |
        c,4 d d, |
        g2.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "53." }
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

