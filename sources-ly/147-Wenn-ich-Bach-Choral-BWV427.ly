
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 427" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Wenn ich in Angst und Not mein' Augen heb empor" }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        R1 |
        R1 |
        \tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
	\key es \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        es4 |
        bes'4 bes c d |
        es2\fermata r4 d4 |
        es4 d c c |
        bes2\fermata r4 bes4 |
        c4 bes aes g |
        f2\fermata r4 g4 |
        es4 f g8 aes bes4 |
        aes2 g4\fermata d' |
        es4 d c c |
        bes2\fermata r4 es4 |
        d4 c bes c |
        bes4 aes g8 aes bes4 |
        aes4 g f2 |
        es2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        bes4 |
        es4 es es f |
        g2 r4 f4 |
        c'4 bes8 d, g4 f8 es |
        d2 r4 es4 |
        es4 d es8 bes bes4 |
        bes2 r4 d4 ~ |
	d8 c ~ c bes bes4 es |
        es8 f16 es d4 es f |
        g8 f f4 g f8 es |
        d2 r4 g4 |
        g4 es es es |
        f8 g ~ g f8 ~ f es! es4 |
        es2 es4 d |
        bes2.
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key es \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g8 aes |
        bes8 c des4 c8 bes aes4 |
        bes2 r4 bes4 ~ |
	bes8 a8 bes4 ~ bes a! |
        f2 r4 bes4 ~ |
	bes8 aes ~ aes g8 ~ g f8 ~ f es |
        d2 r4 g4 |
        g4 f es bes' |
        c4 bes bes d |
        c4 bes bes a! |
        f2 r4 c'4 ~ |
	c8 bes ~ bes aes8 ~ aes g g4 |
        d'8 c c4 c bes |
        es,8 f g es c'4 bes8 aes |
        g2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        es8 f |
        g4 g aes8 g f4 |
        es2\fermata r4 bes4 |
        c4 g' es f |
        bes,2\fermata r4 g4 |
        aes4 bes c8 d es4 |
        bes2\fermata r4 b4 |
        c4 d es g, |
        f4 bes es,4\fermata bes'' ~ |
        bes8 a8 bes4 es, f |
        bes,2\fermata r4 c4 |
        g'4 aes es c |
        d8 e f4 c g |
        c4 bes aes bes |
        es,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "147." }
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

