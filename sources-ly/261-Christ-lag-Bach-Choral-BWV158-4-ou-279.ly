
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 158.4 ou 279" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Christ lag in Todesbanden" }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 72 r4 |
        R1 |
        r2 } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            \tempo 4 = 30 r4 \tempo 4 = 72  }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            \tempo 4 = 34 r2 \tempo 4 = 72 \bar "||" }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 72 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 72 r4 |
        R1 |
        r4 r4 \tempo 4 = 34 r2 \tempo 4 = 72 |
        R1 |
        \tempo 4 = 40 r1 |
	}

  upper = {
	\time 4/4
	\key e \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        b4 |
        ais4 b8 cis d4 e |
        d4 cis b\fermata b |
        g4 a b a8 g |
        fis2 } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            e4\fermata  }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            e2\fermata \bar "||" }
        }
\break
        \set Timing.measureLength = #(ly:make-moment 4 4)
        e4 g a e |
        g4 a b\fermata b |
        e4 dis e fis |
        d!4 cis b\fermata b8 c^\markup { "(#)" } |
        d4 b d a |
        g4 fis e2\fermata |
        b'4 a g fis |
        e1\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 |
        fis4 fis8 ais b4 cis |
        b4 ais fis fis |
        e4 d d e |
        e4 dis } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            b  }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            b2 \bar "||" }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        b4 e8 d e4 c |
        b4 a g d' |
        g4 fis e b' |
        b4 ais fis g |
        a4 d, d c |
        b8 e4 d8 d4 c\fermata |
        b8 cis dis4 e dis4 |
        b1 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key e \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e8 d |
        cis4 d8 e fis4 fis |
        fis4 fis8 e dis4 b |
        b4 a g8 a b4 |
        c4 b8 a } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            g4 }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            g2 \bar "||" }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        g4 g c a |
        g4 d' d b |
        b4 a b b |
        fis'4 fis8 e d4 b |
        a4 g g fis |
        g4 a a2 |
        fis2 g8 e b' a |
        gis1 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        e4 |
        fis8 e d cis b4 ais |
        b4 fis b\fermata dis |
        e4 fis g e |
        a,4 b } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            e,4\fermata }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            e2\fermata \bar "||" }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        e'8 d c b a b c d |
        e4 fis g\fermata g |
        e4 fis g d8 e |
        fis4 fis, b\fermata e |
        fis4 g b,8 c d4 |
        e4 fis8. gis16 a2\fermata |
        dis,4 b e8 a, b4 |
        e1\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "261." }
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
      tempoWholesPerMinute = #(ly:make-moment 72 4)
		}
	    }
	}

