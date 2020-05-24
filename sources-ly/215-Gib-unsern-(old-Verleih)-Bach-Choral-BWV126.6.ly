
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 126.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Gib unsern Fürsten und aller Obrigkeit" }
                     \line { \hspace #9 "Verleih' uns Frieden gnädiglich - également BWV 126.6" }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
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
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 40 r2. 
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
        g4 g fis g8 a |
        bes4 a g\fermata bes |
        c4 c d bes |
        c2 d4\fermata d |
        d4 c d8 c bes4 |
        c8 bes a4 g\fermata g8 a |
        bes4 bes c bes8 a |
        g2 g4\fermata c4 |
        d4 c g8 a bes4 |
        a8 g a4 g\fermata g |
        g4 f bes c |
        d8 c bes4 c c |
        d2\fermata es |
        d4 c c4. bes8 |
        bes2\fermata r4 d4 |
        d4 bes c8 d es4 |
        d2\fermata f4 d |
        es4 d8 c d4 d |
        es4 d f8 es d4 |
        c2 bes\fermata |
        d4 d bes c |
        bes4 a g2\fermata |
        f4 g8 a bes4 g |
        g2.\fermata f4 |
        g4 a bes a |
        g2. fis4 |
        g2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 |
        es8 d c4 d d8 fis |
        g4 fis d d |
        f4 f f f |
        g2 fis4 fis |
        g4 g d d |
        g4. fis8 d4 es |
        f8 es d4 g f8 es |
        d8 f es16 d es8 d4 f |
        f4 es bes8 c d4 |
        d8 g4 fis8 d4 d |
        e4 d d8 e! f4 |
        f4 g g f |
        f2 es |
        f4 g f8 d es4 |
        d2 r4 f8 g |
        a4 g g g |
        g2 f4 f |
        bes,8 c d es f4 f |
        g8 f f es d es f4 |
        f4. es8 d2 |
        f8 g a4 d, c |
        g'4. fis8 g2 |
        d8 c bes c d c d4 |
        c2. a4 |
        bes8 c16 d es4 d4. es16 f |
        g4. f16 es d2 |
        d2.
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
        bes4 |
        bes4 a8 g a4 bes8 c |
        d4 d8 c bes4 bes |
        a4 a bes bes |
        bes4 a8 g a4 a |
        bes4 c8 bes a4 bes8 a |
        g4 d' bes bes8 c |
        d8 c bes a g a bes c |
        d4 c16 b c8 b4 c |
        bes!8 a g4 g f8 g |
        a8 bes c4 bes bes |
        a4 a g a |
        bes8 c d4 g,8 a16 bes a4 |
        bes2 bes |
        bes4 bes bes a |
        f2 r4 bes4 |
        a4 d g, c |
        b2 c4 bes8 aes |
        g4 f bes8 aes4 g8 |
        g8 a! bes2 bes4 ~ |
        bes8 g a4 f2 |
        bes4 a bes8 a g4 |
        es'4. d16 c bes2 |
        bes8 a g4 f8 es f4 |
        es2. f4 |
        es4. d16 es f8 g a4 |
        b8 c16 d g,8 c bes a16 g a4 |
        b2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g4 |
        c,8 d es4 d8 c bes a |
        g4 d g\fermata g' |
        f8 es d c bes c d bes |
        es2 d4\fermata d |
        g8 f e4 fis g8 f |
        es!8 c d4 g,\fermata es' |
        d4 g8 f es4 d8 c |
        b4 c g\fermata a |
        bes4 c8 d es4 d8 e |
        fis8 g d4 g,\fermata g' |
        cis,4 d g f |
        bes8 a g f es4 f |
        bes,2\fermata g' |
        f4 es f f, |
        bes2\fermata r4 bes'4 |
        fis4 g8 f es d c4 |
        g2\fermata a4 bes |
        bes1 ~ |
        bes4 bes8 c d c d es |
        f4 f, bes2\fermata |
        bes'8 a g fis g f es d |
        es8 d c d es2\fermata |
        bes4 es d c8 b |
        c2.\fermata d4 ~  |
        d4 c d8 es f4 ~  |
        f8 es16 d es8 c d2 |
        g,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "215." }
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

