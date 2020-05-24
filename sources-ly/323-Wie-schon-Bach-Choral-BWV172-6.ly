
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 172.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Wie schön leuchtet der Morgenstern" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key f \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        f4 |
        c'8 bes a g f4 c' |
        d4 d c\fermata c |
        d4 e f e |
        d4 d c\fermata a |
        d4 c bes a |
        g2 f4\fermata } %fin du repeat
        r4 |
        c'2 a2\fermata |
        c2 a2\fermata |
        a4 a g g |
        a4 a g g |
        a4 a g2 |
        f2\fermata f'4 e |
        d4 c bes a |
        g2 f4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        c4 |
        c4 c d8 e f4 |
        f4 f f g |
        a4 g f8 g g4 |
        f4 f e f |
        f4 e f8 g f4 |
        f4 e f } %fin du repeat
        r4 |
        g2 a2 |
        g2 f2 |
        f4 f e8 d c4 |
        c4 c8 d e4 e |
        f4 f f e |
        f2 a4 g |
        f4 e d c |
        d4 c c
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key f \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        a4 |
        g4 f8 g a bes c4 |
        c8 bes16 a bes8 bes a4 c |
        c4 b c8 d e g, |
        a8 d b4 c c |
        bes8 a g4 d'8 c c4 |
        g8 a bes c a4 } %fin du repeat
        r4 |
        c2 c2 |
        c2 c2 |
        c4 c c c8 bes |
        a8 bes c4 c c |
        c4 d d c8 bes |
        a2 d8 c bes4 |
        bes8 a g4 f8 g a c |
        bes8. a16 g4 a
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        f4 |
        e4 f8 e d4 a |
        bes8 c d e f4\fermata e |
        f4 g a8 b! c e, |
        f8 d g4 c,\fermata f |
        bes,4 c d8 e f bes, |
        c2 f,4\fermata } %fin du repeat
        r4 |
        e'2 f2\fermata |
        e2 f2\fermata |
        f,8 g a bes c d e c |
        f8 g a bes c bes a g |
        f8 e d c bes g c4 |
        f,2\fermata d8 f g a |
        bes4 c d8 e f a, |
        bes8 g c4 f,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "323." }
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

