
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 44.7" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "O Welt, ich muß dich lassen" }
                     \line { \italic "old: Nun ruhen alle Wälder" }
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
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key bes \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        d4 |
        bes4 c d8 es f4 |
        es2 d4\fermata d8 es |
        f4 f c d |
        bes2 a4\fermata f |
        bes4 c d d8 c |
        c2.\fermata d4 |
        bes4 c d8 es f4 |
        es2 d4\fermata d |
        f4 f c d |
        bes2 a4\fermata f |
        bes4 c d es |
        d8 c c4 bes\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        f4 |
        es4 es d8 c bes4 |
        bes'4 f f g |
        f8 es f g a4 a |
        g2 c,4 c |
        f4 g8 a bes4 f |
        f2. a4 |
        g4 f f g |
        g4 fis g g |
        f4 f f f |
        f4 e f a |
        g4 f f bes8 a |
        bes4 a f
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key bes \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        bes4 |
        g4 a bes8 c d4 |
        d4 c bes bes |
        bes4 bes f' f |
        f4 e f a, |
        bes4 es f8 a, bes4 |
        a2. d4 |
        d4 c bes8 c d4 |
        c8 b a4 b! bes |
        a8 g a8 bes c4 bes8 c |
        d4 c c d |
        d4 c bes bes8 c |
        d8 bes f' es d4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        bes4 |
        es8 d c4 bes bes'8 a |
        g4 a bes\fermata g |
        d8 c d es f4 d |
        g2 f4\fermata es! |
        d4 c bes8 c d es |
        f2.\fermata fis4 |
        g4 a bes b |
        c4 c, g'\fermata g |
        d'4 c8 bes a4 bes8 a |
        g4 c f,\fermata d |
        g4 a bes8 a g4 |
        f8 es f4 bes,4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "355." }
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

