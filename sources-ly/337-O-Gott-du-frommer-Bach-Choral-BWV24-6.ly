
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 24.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "O Gott, du frommer Gott" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 | 
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
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
        a4 bes8 c16 d c4 bes16 a bes8 |
        a4\fermata a8 bes c4 f, |
        g4 a g2 |
        f4\fermata a a bes8 c16 d |
        c4 bes a4\fermata a8 bes | 
        c4 f, g4 a8. bes16 |
        g2 f4\fermata g |
        g4 a bes bes8. c16 |
        a4\fermata a g c8 d16 es |
        d4 c8 b c4\fermata c |
        c8 bes a4 bes c8 d16 es |
        d4\fermata g, a a |
        g4 g f\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e8 f16 g |
        f4 f f8 e16 d e4 |
        f4 f g8 e f4 |
        e4 f d e |
        c4 f f f8 g |
        e8 f4 e8 f4 f |
        f8 es d4 e f |
        f4 e c d |
        e4 f4 ~ f8 e16 d e4 |
        f4 es d g |
        f8 aes g f e!4 g |
        f4 f f f |
        f4 e c f4 ~ |
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
        cis4 |
        d4 d8 bes a g16 f g4 |
        c4 c8 d e4 a,8 f |
        c'4 c bes g |
        a4 c d d8 bes8 ~ |
	bes8 a g c c4 f,8 g |
        a8 g f4 c' c |
        c8 bes16 a bes8 g a4 d8 b |
        c4 c d8 c16 bes c4 |
        c4 c b4 c |
        c8 f d4 c e! |
        c4 c d c |
        bes4 bes a d |
        d8 g, a bes! a4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        a4 |
        d8 c bes4 c c |
        f,4\fermata f' e d |
        c8 bes a f bes g c c, |
        f4\fermata f'8 e d c bes g |
        c4 c f,\fermata d' |
        a4 bes bes'8 a g f |
        c4 c f4\fermata b,8 g |
        c4 bes!8 a g4 c |
        f4\fermata fis f es8 f16 g |
        aes8 g16 f g8 g, c4\fermata c'8 bes! |
        a8 g f es d c bes a |
        bes4\fermata c f8 e d c |
        bes8 b c4 f\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "337." }
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

