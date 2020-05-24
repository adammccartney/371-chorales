
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 374" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Lobet den Herren, denn er ist sehr freundlich" }
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
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
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
        g4 |
        d4 g g2 |
        a2\fermata r4 a4 |
\break
        bes8 c d4 cis2 |
        d2\fermata bes4 bes |
\break
        c4 c d2 |
        bes2\fermata r4 d4 |
\break
        c4 c c a |
        d4 c bes a |
\break
        g2 a2\fermata |
        bes4 a g fis! |
\break
        g2 a2\fermata |
        r4 d4 bes bes |
\break
        bes4 d c bes |
        a4 g a2 |
\break
        g2\fermata r4 g4 |
        d4 g g2 |
\break
        a2\fermata r4 a4 |
        bes8 c d4 cis2 |
        d2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d8 c |
        bes8 c d4 ~ d8 c16 bes a8 g |
        d'2 r4 fis4 |
        g4 a a2 |
        a2 g8 a bes4 |
        bes4 a bes4. aes8 |
        g2 r4 bes4 |
        a8 g f e f g a g |
        a8 fis g a ~ a g ~ g fis |
        g8. fis16 g8 g, d'2 |
        d8 e f! fis g es d4 ~ |
	d8 c8 d bes d2 |
        r4 fis4 d g |
        f4 ~ f8 g16 f e!8 fis g4 ~ |
	g8 fis8 g4 g fis! |
        d2 r4 d4 |
        d4 d ~ d8 c16 bes a8 g |
        d'2 r4 fis4 |
        g4 a8 e e fis g4 |
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
        bes8 a |
        g8 a bes4 ~ bes8 a16 g c4 |
        fis,2 r4 d'4 |
        d8 e f4 e8 d e16 fis g8 |
        fis2 d4 f |
        g4 f f f |
        es2 r4 f4 |
        f8 bes, a g8 a bes c4 ~ |
	c8 bes ~ bes8 a bes16 c d8 d8. c16 |
        bes8 d4 c8 fis,2 |
        g4 c d8 c16 bes a4 |
        g8 d g4 ~ g4 fis\fermata |
        r4 a4 g8 a bes c |
        d8 es d bes g a bes16 c d8 |
        es8 d16 c bes8 c16 d es!4 d8. c16 |
        bes2 r4 bes8 a |
        g8 a bes a g4. c8 |
        fis,2 r4 d'4 |
        d4 a8 bes a2 |
        a2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        g8 a |
        bes8 a g4 es'2 |
        d2\fermata r4 d4 |
        g4 f8 g a2 |
        d,2\fermata g8 f! es d |
        es8 c f f, bes c d bes |
        es2\fermata r4 bes4 |
        f'8 g a bes a g f e |
        fis8 d e fis g4 d |
        es2 d2\fermata |
        g,4 a bes8 c d c |
        bes8 a bes g d'2\fermata |
        r4 d4 g8 f es4 |
        d8 c bes4 ~ bes8 a g bes |
        c8 d es d c a d4 |
        g,2\fermata r4 g8 a |
        bes8 a g f es2 |
        d2\fermata r4 d'4 |
        g4 f!8 g a4 a, |
        d2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "227." }
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

