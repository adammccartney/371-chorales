
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 46.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "O großer Gott von Macht" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
	\key d \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 |
        bes4 c d a8 b |
        c2\fermata r4 g4 |
        g4 a bes c |
        a2\fermata r4 f4 |
        f4 g a bes |
        c2\fermata r4 d4 |
        bes8 c d4 c c |
        bes2\fermata r4 d4 |
        d4 d c c |
        bes4 bes a2\fermata |
        r4 a bes a |
        g4 g f f |
        e2\fermata r4 g4 |
        g4 a8 bes c4 bes |
        a2 g\fermata |
        r4 g4 g a8 b |
        c4 bes! a2 |
        a2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        fis4 |
        g4 f! f f |
        g2 r4 es4 |
        e!4 fis g a |
        fis2 r4 d4 |
        d4 e! f es |
        es2 r4 d4 |
        g8 a bes4 bes a |
        f2 r4 f4 |
        g4 g g d |
        d4 e fis2 |
        r4 fis4 g f |
        f4 e d d |
        c2 r4 d4 ~ |
        d8 c f4 g8 a d, g |
        g4 fis d2 |
        r4 d4 es f |
        g4 g g8 fis e!4 |
        fis2. 
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key d \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 |
        d4 c bes f' |
        es2 r4 c4 |
        c4 c d es |
        d2 r4 a4 |
        bes4 bes c bes |
        f'2 r4 f4 |
        es4 f f c |
        d2 r4 bes4 |
        bes4 bes bes a4 ~ |
        a4 g a2 |
        r4 d4 d c |
        d4 g, a g |
        g2 r4 g4 |
        g4 d' c8 a bes g |
        es'4 a, bes2 |
        r4 b4 c f |
        es4 d cis8 d4 cis8 |
        d2. 
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        d4 |
        g4 a bes d |
        c2\fermata r4 c4 |
        bes4 a g c, |
        d2\fermata r4 d8 c |
        bes8 bes' a g f4 g |
        a2\fermata r4 bes4 |
        es,4 d8 es f4 f, |
        bes2\fermata r4 bes'8 a |
        g4 f e! fis |
        g4 g, d'2\fermata |
        r4 d4 g, a |
        b4 c2 b4 |
        c2\fermata r4 bes!4 |
        es4 d e8 fis g4 |
        c,4 d g,2\fermata |
        r4 f'!4 es d |
        c4 g a2 |
        d2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "82." }
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

