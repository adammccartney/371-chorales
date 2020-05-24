
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 428" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Wenn mein Stündlein vorhanden ist (1)" }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
	\key g \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 |
        d4 e fis g |
        a4 b g\fermata b8 c |
        d4 d b8 c d4 |
\break
        c2 b4\fermata b |
        c4 b a g8 a |
        b4 b8 a g4\fermata b8 c |
        d4 d b d |
\break
        c2 b4\fermata b |
        c4 b a g8 a |
        b4 b g\fermata a |
        b4 b e, fis |
\break
        g8 fis e4 d\fermata d |
        g4 a b a8 b |
        c4 b a2 |
        g2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 |
        d4 c c d |
        d4 d e d |
        d8 e fis4 g f |
        e4 fis! d d |
        d4. e8 fis4 g8 fis |
        e4 dis e e |
        d4 a' g b4 ~ |
	b4 a4 g g |
        g4 g fis8 e d4 |
        d4 d e e8 fis8 ~ |
	fis8 e16 fis g8 fis e4 ~ e8 d |
        d4 d8 cis a4 d |
        d4 d g g |
        fis8 a ~ a g g4 fis |
        d2.
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        b8 a |
        g4 g a b! |
        c4 b c b |
        a4 a g8 a b4 ~ |
	b4 a4 g b |
        a4 b b b |
        b4 b b g |
        a8 b c d d e f4 |
        e4 fis! d d |
        c4 d d d8 c |
        b8 a g4 c c |
        b4 b4 ~ b8 a a b16 c |
        b8 a g4 fis fis8 a |
        b4 a g e'8 d |
        c8 d d4 e d8 c |
        b2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        g8 a |
        b4 bes a g |
        fis4 g c\fermata g' |
        fis8 e d4 e b |
        c4 d g,\fermata g' |
        fis4 g dis e8 fis |
        g8 a b4 e,\fermata e |
        f4 fis g gis |
        a4 d, g\fermata g8 fis |
        e4 d c b8 a |
        g8 a b4 c\fermata a' |
        g8 fis e d cis4 d |
        g,4 a d\fermata d8 c |
        b8 a g fis e d' c b |
        a8 fis g b c a d d, |
        g2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "322." }
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

