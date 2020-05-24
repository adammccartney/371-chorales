
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 385" }
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
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 30 r4 
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
        b4 b a fis |
        e4 fis8 gis a4 b |
        a2.\fermata cis8 d |
        e4 fis e cis |
        a4 fis8 gis a4 b |
        a2\fermata cis4 cis |
        cis4 b cis2 |
        a2\fermata r4 a4 |
        b4 b cis2 |
        a2\fermata b4 b |
        cis8 b a gis fis4 b |
        b4 a8 gis fis2 |
        e2\fermata fis4 gis |
        a4 b a4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 |
        e4 e e d8 cis |
        b4 cis8 d e4 e |
        e2. a4 |
        b8 cis d cis b4 a |
        a4 d, cis fis8 e |
        cis2 a'4 b |
        a8 gis fis4 fis eis |
        cis2 r4 fis4 |
        gis4 gis a8 fis g4 |
        fis2 fis4 gis! |
        a8 gis fis e d4 d |
        cis8 gis' fis e e4 dis |
        b2 d!4 d |
        e4 e8 d cis4
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
        b8 a gis4 a a |
        gis4 a8 b e, a4 gis8 |
        cis2. e4 ~ |
	e4 a,4 b cis8 d |
        e4 a, a4. gis8 |
        e2 e'4 gis |
        fis4 fis,8 gis a4 gis |
        fis2 r4 cis'4 |
        e4 e e2 |
        d2 d8 cis b4 |
        a8 cis d e a,4 gis8 fis |
        e4 fis8 gis cis4 b8 a |
        gis2 a4 b |
        e,8 a4 gis8 e4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 |
        gis8 fis e d cis4 d4 ~ |
	d4 cis8 b cis a e'4 |
        a,2.\fermata a'4 |
        gis4 fis gis a |
        cis,4 d8 e fis a d, e |
        a,2\fermata a'8 gis fis eis |
        fis8 e! d4 cis2 |
        fis2\fermata r4 fis4 |
        e8 d cis b a2 |
        d2\fermata b4 e |
        a,4 b8 cis d4 b |
        cis4 dis8 e a,4 b |
        e2\fermata d4 cis8 b |
        cis8 a e4 a4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "36." }
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

