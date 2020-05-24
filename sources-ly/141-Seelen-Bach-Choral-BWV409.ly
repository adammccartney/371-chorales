
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 409" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Seelenbräutigam, Jesu, Gottes Lamm" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key a \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 a gis a |
        b2\fermata a4 b |
        cis4 b a2\fermata |
        cis4 d e d |
        cis4 b cis2 |
        b2\fermata a4 b |
        cis4 b a gis |
        a4. gis8 gis2\fermata |
        a4 a gis a |
        b2\fermata a4 b |
        cis4 b8 a a2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 e e e8 fis |
        gis2 fis4 e |
        e4 e e2 |
        a4 a a4 ~ a8 b8 ~ |
	b8 a8 gis b ~ b8 a16 gis a4 ~ |
	a4 gis4\fermata fis4 gis |
        a4 gis4 ~ gis8 fis4 eis8 |
        fis8 eis fis4 ~ fis4 eis!4\fermata |
        fis4 e e e |
        e2 cis8 fis e4 ~ |
	e8 a8 gis4 e2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key a \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        cis4 cis b cis |
        e2 cis8 d cis b8 ~ |
	b8 a4 gis8 cis2 |
        e4 fis e fis8 e |
        e4 e e2 |
        e2 cis4 e |
        e4 ~ e8 d cis4 cis |
        cis2 ~ cis2 |
        cis4 cis b a4 ~ |
	a4 gis4\fermata a8 d cis b |
        a8 e' e8. d16 cis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        a8 b cis d e4 a, |
        e'2\fermata fis4 gis |
        a4 e a,2\fermata |
        a'8 gis fis4 cis fis8 gis |
        a4 e8 gis a4 a, |
        e'2\fermata fis4 e |
        a4 e fis cis |
        fis,8 gis a b cis2\fermata |
        fis4 cis8 d e4 cis8 a |
        e'2\fermata fis4 gis |
        a4 e a,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "141." }
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

