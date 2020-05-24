
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 127.5" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Wenn einer schon ein Haus aufbaut" }
                     \line { \italic "old: Herr Jesu Christ, wahr' Mensch und Gott" }
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
	\relative c'' {
        f4 |
        f4 f e c |
        d4 e f\fermata f |
        e4 d c bes |
        a4 g a\fermata a |
        g4 a8 b c4 d |
        c4 b c\fermata c |
        d4 e f e |
        d4 d c\fermata c |
        bes4 a d c |
        bes4 a g\fermata g |
        a4 b c d |
        c4 b c4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 |
        a4 a g a8 g |
        f4 g a a |
        g8 f f g g a d, e |
        f4 e8 d cis4 d |
        d8 c c4 c8 f f4 |
        f8 e d4 e f |
        f4 bes a8 g g4 |
        fis4 gis a a |
        a8 g g f f8 es es d |
        d8 e! f4 e e |
        es8 d d4 es! f |
        f8 es d4 e
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
        c4 |
        c4 c8 d e4 f8 e |
        d8 c bes4 c d8 c |
        bes8 c d4 e8 d d cis |
        d8 a bes4 e, f |
        g4 f4 e8 a a8 g |
        g4 g g a |
        bes4 bes c8 d e4 |
        a,8 b16 c d8 e e4 e |
        f8 c c4 bes fis |
        g4 c c c |
        c4 g g aes8 g |
        g4 g g
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        f8 g |
        a4 g8 f c' bes a4 |
        bes8 a g4 f\fermata d |
        g8 a bes4 e,8 fis g4 |
        d8 c bes4 a\fermata d |
        e4 f8 g a4 b4 |
        c4 g c,\fermata f |
        bes4 a8 g a b c4 |
        c8 b16 a b8 e,8 a4\fermata a, |
        d8 e f4 bes,8 c d4 |
        g,4 a8 bes c4\fermata c'4 |
        fis,4 f es b |
        c4 g c4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "284." }
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

