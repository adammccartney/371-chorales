
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 154.8" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line {"Meinen Jesum laß ich nicht, weil er sich" }
      \line { "für mich gegeben" }
      } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key d \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 a b b |
        cis4 cis d2\fermata |
        e4 e d d |
\break
        cis4 b8 cis16 d b2 |
        a2\fermata a4 a |
        b4 b a g |
\break
        fis2\fermata a4 a |
        g4 g fis e8 fis16 g |
        e2 d\fermata |
\break
        d'4 d cis cis |
        b4 b a2\fermata |
        a4 a g fis |
        e4 e d2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        fis8 g a4 ~ a g |
        g8 e a g fis2 |
        a4 a a gis8 fis |
        e4 e fis e |
        e2 fis8 g a4 |
        a4 g4 ~ g8 fis8 ~ fis e |
        d2 cis4 fis4 ~ |
        fis8 e16 d e4 ~ e8 d d4 ~ |
        d4 cis a2 |
        fis'4 fis fis e |
        fis4 e e2 |
        fis4 fis4 ~ fis8 e4 d8 ~ |
        d8 cis16 b cis8 cis a2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key d \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 d d e |
        e4 a, a2 |
        cis4 cis cis b4 ~ |
        b8 a a4 a gis |
        cis2 d4 d |
        d4 e e8 cis d a |
        a2 a4 b |
        b4 a a b |
        a4 g4 fis2 |
        b4 b a a |
        a4 gis cis2 |
        cis4 d d8 a a b |
        b8 g e a fis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        d8 e fis d g fis g e |
        a8 g fis e d2\fermata |
        a8 b cis a b cis d b |
        cis8 d e cis d b e4 |
        a,2\fermata d8 e fis d |
        g8 fis e d cis a b cis |
        d2\fermata fis8 e dis b |
        e8 d! cis a d fis g e |
        a8 g a8 a, d2\fermata |
        b8 cis d e fis gis a fis |
        dis8 b e4 a,2\fermata |
        fis'8 e d cis b cis d b |
        g8 e a4 d,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "152." }
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

