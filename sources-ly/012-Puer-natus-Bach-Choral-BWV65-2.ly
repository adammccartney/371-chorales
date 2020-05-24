
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 65.2" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Puer natus in Bethlehem" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 
	}

  upper = {
	\time 3/4
	\key a \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 |
        a2 a4 |
        b2 b4 |
        c4 b a |
        g2.\fermata |
        c2 d4 |
        c2 b4 |
        c2\fermata c4 |
        c2 c4 |
        b2 a4 |
        a4 b gis |
        a2\fermata a4 |
        g!2 a4 |
        b2 b4 |
        c2 b4 |
        a2 gis4 |
        a2\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 |
        e4 e a |
        g2 g4 |
        g2 f4 |
        e2. |
        g2 gis4 |
        a2 g!4 |
        g2 g4 |
        a2 fis4 |
        g2 g4 ~ |
        g4 fis e |
        e2 d4 |
        d4 e d |
        d2 f4 |
        e4 f g4 ~ |
	g4 fis4 e |
        e2
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key a \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        c4 |
        c4 c d |
        d2 d4 |
        c4 e c |
        c2. |
        e2. ~ |
	e4 d4 d |
        e2 e4 |
        e4 d d |
        d4 e e |
        d4 b b |
        c2 a4 |
        b4 c a |
        g4 b d |
        c4 d2 |
        c2 b4 |
        cis2
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        a4 |
        a'4 g fis |
        g4 d f! |
        e4 c f |
        c2.\fermata |
        c4 c' b |
        a4 fis g |
        c,2\fermata c'4 |
        a4 fis d |
        g4 e cis |
        d4 dis e |
        a,2\fermata f'4 ~ |
        f4 e fis |
        g4 fis gis |
        a4 d, e |
        f4 dis e |
        a,2\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "12." }
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

