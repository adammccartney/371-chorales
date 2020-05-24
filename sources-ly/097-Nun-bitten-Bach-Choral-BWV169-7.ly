
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 169.7" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Nun bitten wir den heiligen Geist" }
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
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
	\key a \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 |
        b4 b a4. gis8 |
        fis4 e fis gis |
        a2.\fermata cis8 d |
        e4 fis e4. d8 |
        cis8 b a gis fis4 gis |
        a2\fermata cis4 cis |
        cis4 b cis2 |
        a4\fermata a b8 cis d4 |
        cis8 b cis4 a2\fermata |
        b8 cis d4 cis8 b a gis |
        fis4 e a8 b cis4 |
        b4. a8 gis4 fis |
        e2\fermata fis4 gis |
        a2 b2 |
        a2.\fermata 
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 |
        e4 e e e |
        d4 e d8 fis e4 |
        e2. a4 |
        a4 a b8 a gis4 |
        a4 e d8 cis b4 |
        cis2 e8 fis gis4 |
        gis8 fis eis fis eis fis4 eis8 |
        fis4 fis gis8 fis e4 |
        e2 d |
        b'8 a gis!4 a e |
        d8 cis b4 a8 e' e4 |
        fis2 ~ fis8 e4 dis8 |
        b2 d!4. d8 |
        cis8 d e4 fis e8 d |
        cis2. 
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key a \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        cis4 |
        b8 a gis4 a8 b cis4 |
        a4 a a8 d cis b |
        cis2. e4 |
        e4 d8 cis b4 e |
        e8 d cis b a4 e |
        e2 a4 gis |
        a4 b b8 a gis cis |
        cis4 d d8 cis b4 |
        a8 g fis e fis2 |
        e4 b' a2 ~ |
	a4 gis8 fis e gis a gis |
        fis4 b b cis8 b |
        gis2 b4 b |
        a2. gis4 |
        e2. 
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 |
        gis8 fis e d cis b a4 |
        d4 cis b e |
        a,2.\fermata a'8 b |
        cis4 d gis, e |
        a4 cis, d e |
        a,2\fermata a'4 eis |
        fis4 d cis2 |
        fis4\fermata d8 cis b a gis4 |
        a2 d\fermata |
        gis!4 fis8 e a4 cis, |
        d2 ~ d4 cis4 |
        dis8 b cis dis e gis, a b |
        e,2\fermata b'4 eis, |
        fis4 cis' d e |
        a,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "97." }
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

