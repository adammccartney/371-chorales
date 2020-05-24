
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 325" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Heilig, heilig, heilig" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key f \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        c4 a g2 |
        f2\fermata c'4 d |
        c2\fermata f4 f |
        e4 e d4. c8 |
        c2\fermata c4 d |
        c4 bes a2\fermata |
        r4 g4 a8 b c4 |
        c4 b c2\fermata |
        c4 d bes bes |
        a4 bes a g |
        f2\fermata r4 a4 |
        g2 f4\fermata c' |
        c4 b c\fermata f4 |
        f4 e d2 |
        c2\fermata c4 d8 c |
        bes4 bes a bes8 a |
        g2 f2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        f4 f4 ~ f8 e16 d e4 |
        c2 g'4 g |
        g2 f4 g |
        g4 e8 f16 g a4 ~ a8 g16 f |
        e2 f4 f |
        e4 d8 c c2 |
        r4 e8 g8 f4 e |
        a8 g16 f g4 g2 |
        a4 a4 ~ a8 g16 f g4 ~ |
	g8 f16 e f4 ~ f8 e16 d e4 |
        c2 r4 f4 |
        f4 e d g |
        a4 g8 f e4 f |
        g4 g a g8 f |
        e2 f4 f8 e |
        d4 c c8 d16 e f4 ~ |
	f8 e16 d e4 c2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key f \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a8 bes c4 ~ c8 g c8 bes |
        a2 c4. b8 |
        e2 a,4 d ~ |
	d8 c16 b c4 ~ c8 b16 a b4 |
        g2 a4 bes8 a |
        g4 f8 g a2 |
        r4 c4 c c |
        d4 ~ d8 e16 f e2 |
        f4 f d c |
        c4 bes8 d c4. bes8 |
        a2 r4 c4 ~ |
	c4. bes8 a4 g |
        d'4 d c c |
        d4 d8 c8 ~ c b!16 a b4 |
        g2 a4 a |
        bes8 a g4 f8 a d4 ~ |
	d8 bes8 g c16 bes a2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c, {
        f8 g a bes c2 |
        f,2\fermata e'8 c g' g, |
        c2\fermata d8 c b g |
        c8 e a g f d g g, |
        c2\fermata f4 bes, |
        c4 d8 e f2\fermata |
        r4 c8 e f g a g |
        f8 d g g, c2\fermata |
        f8 e d f g f e c |
        f8 e d bes c4 c, |
        f2\fermata r4 f'4 |
        c2 d4\fermata e4 |
        f4 g a\fermata a |
        b4 c f, g |
        c,2\fermata f8 e d f |
        g8 f e c f e d c |
        bes8 g c4 f,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "235." }
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

