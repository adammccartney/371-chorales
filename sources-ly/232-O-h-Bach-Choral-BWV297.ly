
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 297" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "O höchster Gott, o unser lieber Herre" }
                     \line { \italic "old: Die Sonn' hat sich mit ihrem Glanz" }
                 } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        r2 \tempo 4 = 34 r2 
	}

  upper = {
	\time 4/4
	\key d \dorian % c \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 |
        f4 g a\fermata d |
        c4. b8 a b c4 |
        b2 a4\fermata d |
        d4 d cis\fermata e |
        d4 a bes a8 g |
        g2 f4\fermata f4 |
        e4 e d\fermata a' |
        c4 c g8 a bes4 |
        a4\fermata a c d |
        a4\fermata c a g8 f |
        e4. d8 d2\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 |
        d4 ~ d8 e f4 a |
        a4 gis a8 gis! a4 |
        a8 gis16 fis gis4 e a |
        a8 g b!4 a a8 g |
        f4 f g f |
        f8 e16 d e4 c d |
        d4 cis a f'4 ~ |
	f8 e8 f4 e f8 g |
        f4 f f f |
        f4 g4 ~ g8 f16 e d4 |
        d4 cis a2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key d \dorian % c \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        f4 |
        a4 bes d f |
        e4 e8. d16 c8 d e f |
        b,8 e4 d8 cis4 d |
        d8 e f4 e a, |
        a4 d4. c8 c4 |
        d8 bes g c16 bes a4 bes! |
        bes4 a8 g f4 d' |
        c4 c c8 a d c |
        c4 d c4 ~ c8 bes |
        c4 c c bes4 ~ |
	bes8 g8 e a16 g fis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        d4 |
        d4 g, d\fermata d' |
        a'4 e f c8 d |
        e4 e, a\fermata f' |
        bes4 a8 gis a4\fermata cis, |
        d8 e f4 ~ f8 e f4 |
        bes,4 c f,4\fermata bes! |
        g4 a d,\fermata d' |
        a8 g a bes c4 d8 e |
        f4\fermata d a bes |
        f4\fermata e f bes |
        g4 a d,2\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "232." }
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

