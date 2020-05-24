
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 187.7" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Da Christus geboren war" }
                     \line { \italic "old: Singen wir aus Herzens' Grund" }
                 } }
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
        g4 g8 a bes4 |
        a2 g4 |
        fis8 g g4. fis16 g |
        a2.\fermata |
\break
        a8 bes bes4. a16 bes |
        c2 d4 |
        bes4 a2 |
        g2.\fermata |
        a4 a bes |
\break
        c2 bes4 |
        a4 g2 |
        f2.\fermata |
        c'4 d e |
        f4 e2 |
\break
        d2 cis4 |
        d2.\fermata |
        d2 d4 |
        c8 bes a bes c4 |
        d4 c bes |
\break
        a2.\fermata |
        d2 d4 |
        c4 d es |
        d4 c bes |
        a2.\fermata |
\break
        a8 bes bes4. a16 bes |
        c2 d4 |
        bes4 a2 |
        g2.\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 g8 fis g4 |
        g4 fis g |
        c,4 d cis4 |
        d2. |
        fis4 g2 |
        g4 a fis |
        d4 es d |
        d2. |
        f4 f f |
        e4 f g |
        f2 e4 |
        c2. |
        a'4 g2 |
        f4 bes a |
        f4 bes a |
        a2. |
        bes2 bes4 |
        a8 g f g a4 |
        a4 fis g |
        fis2. |
        g4 a bes |
        a4 g fis |
        g4 fis g |
        fis2. |
        fis8 g g4. fis16 g |
        a8 g fis g a4 |
        g2 fis4 |
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
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        bes8 c d4 d |
        es4 d8 c bes4 |
        a4 g8 a bes4 |
        fis2. |
        d'2 d4 |
        c8 bes a g a4 |
        g2 fis4 |
        bes2. |
        d4 d d |
        c8 bes a4 g |
        a4 d c |
        a2. |
        a4 b cis |
        d2 cis4 |
        d4 e2 |
        fis2. |
        f!2 f4 |
        f2 es!4 |
        d2 d4 |
        d2. |
        d4 c bes |
        c2 c4 |
        bes4 a g |
        d'2. |
        d2 d4 |
        c4 es d |
        d4 es d8 c |
        b2. |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g8 a bes a g4 |
        c,4 d es |
        a,4 bes g |
        d'2.\fermata |
        d4 g f |
        e4 fis d |
        g4 c, d |
        g,2.\fermata |
        d'8 e f! e d4 |
        a'4 d, e |
        f4 bes, c |
        f,2.\fermata |
        f'2 e4 |
        d4 g8 f g a |
        bes4 g a |
        d,2.\fermata |
        bes8 c d c bes4 |
        f'2 f4 |
        fis4 d4 g |
        d2.\fermata |
        bes'4 fis g |
        a2 a,4 |
        bes2 c4 |
        d2.\fermata |
        d'4 c bes |
        a4 g fis |
        g4 c, d |
        g,2.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "109." }
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

