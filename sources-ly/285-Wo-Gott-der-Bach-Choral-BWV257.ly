
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 257" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Wo Gott der Herr nicht bei uns hält" }
                     \line { \italic "old: Wär Gott nicht mit uns diese Zeit" }
                 } }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key a \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        c4 |
        c8 b a b c d e4 |
        d4 d c\fermata c |
        b4 a8 b c4 d |
        b2 a4\fermata } %fin du repeat
\break
        d4 |
        e4 e b8 c d4 |
        c4 c b\fermata c |
        d4 a8 b c4 b |
        a4 a g\fermata c |
        b4 a8 b c4 d8 c |
        b2 a4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        a4 |
        g4 f e8 d c4 |
        d8 e f4 e fis |
        g4 fis8 gis a4 a8 g |
        f4 e8 d c4 } %fin du repeat
        g'4 |
        g4 g d4. e8 |
        fis8 gis a4 gis! a |
        a8 g fis4 e d8 e |
        f4 f e a |
        g4 a gis8 b a g |
        f4 e8 d cis4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key a \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e4 |
        e8 d c4 c8 b a g |
        a4 b c c |
        d4 d e a, |
        a4 gis a } %fin du repeat
        g!4 |
        c4 g8 a b4 a8 b |
        c8 d e4 e e |
        d4 d g,8 a b4 |
        c8 b c d e4 es |
        d4 d e a, |
        a4 gis e4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        a4 |
        e4 f8 g a b c4 |
        f,4 g c,\fermata a' |
        g4 d' a8 g f e |
        d4 e a,4\fermata } %fin du repeat
        b4 |
        c8 d e f g4 fis8 gis |
        a8 b c d e4\fermata a,8 g |
        fis8 e d4 e8 fis! g4 |
        a8 g a b c4\fermata fis, |
        g4 f! e8 c f e |
        d8 b e4 a,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "285." }
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

