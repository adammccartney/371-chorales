
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 254" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Ach Gott, erhör mein Seufzen und Wehklagen" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        r2 \tempo 4 = 30 r4 
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
        f4 f g g |
        a4 a bes a |
        g2 f4\fermata c |
        f4 f g g |
        a4 a g f |
        e2 d4\fermata a' |
        f4 g e\fermata a |
        f4 g e\fermata e |
        f4 f g g |
        a4 a g f |
        e2 d4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 |
        d8 e f4 f e8 d |
        c4 d d8 g8 ~ g f8 ~ |
	f8 e16 d e4 c a8 g |
        f4 d' d c |
        c4 f f8 e ~ e d |
        d4 cis a e' ~ |
	e8 d8 d e cis4 e |
        d8 c d4 c c |
        c4 d d e ~ |
	e8 d16 e f4 e4 ~ e8 d |
        d4 cis a
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
        a4 c d c8 bes |
        a8 g f4 ~ f8 e c'4 |
        d8 g, c bes a4 f8 g |
        a4 bes4 ~ bes8 a g4 |
        f4 c' c8. bes16 a4 |
        bes4 a8 g f4 a |
        a4 bes a a |
        a4 g g g |
        a4 a bes4 ~ bes8 c16 bes |
        a4 d8 c bes4 a |
        bes4 a8 g fis4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        d4 |
        d4 a bes c |
        f8 e d4 g, a |
        bes4 c f,\fermata f'8 e |
        d8 c bes a g f e4 |
        f8 g a bes c4 d |
        g,4 a d,\fermata cis' |
        d4 g, a\fermata c! ~ |
	c4 b!4 c\fermata c8 bes |
        a8 f d' c bes a g c |
        f8 e d4 ~ d8 cis d4 |
        g,4 a d,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "186." }
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

