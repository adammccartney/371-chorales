
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 244.37" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { " O Welt, ich muß dich lassen" }
                     \line { \italic "old: In allen meinem Taten" }
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
	\key f \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 |
        f4 g a8 bes c4 |
        bes2 a4\fermata a8 bes |
        c4 c g a8 g |
        f2 e4\fermata c4 |
        f4 g a8 bes16 c bes8 a |
        g2.\fermata a4 |
        f4 g a8 bes c4 |
        bes2 a4\fermata a8 bes |
        c4 c g a8 g |
        f2 e4\fermata c |
        f4 g a g8 a16 bes |
        a4 g f\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        f4 |
        d4 e f8 g a4 |
        a4 g f f |
        f8 e f g e d c4 |
        c4 b c e |
        d4 c c d |
        e2. e4 |
        d4 c c d |
        d4 g fis f |
        f4 f e8 d c4 |
        c4 b c g |
        c4 bes a8 c f4 |
        f4 e c
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
        d4 c8 bes a4. g8 |
        f4 c' c c |
        c4 c c c8 b |
        a8 g f4 g bes! |
        a4 g f f |
        c'2. a4 |
        a4 g f8 g a4 |
        g8 a bes c d4 d |
        c8 bes c d e4 f |
        f,8 a g f g4 e |
        f8 c' d e f c bes f |
        c'4. bes8 a4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        f4 |
        bes4 a8 g f4. e8 |
        d4 e f\fermata f8 g |
        a4 a,8 bes c4 a |
        d2 c4\fermata c |
        d4 e f bes, |
        c2.\fermata cis4 |
        d4 e f fis |
        g4 g, d'\fermata d' |
        a8 g a bes c4 f,8 e |
        d8 c d4 c\fermata bes |
        a4 g f d' |
        c8 bes c4 f,4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "50." }
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

