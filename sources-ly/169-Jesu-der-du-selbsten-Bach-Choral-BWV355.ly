
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 355" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Jesu, der du selbsten wohl" }
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
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
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
        cis4 a b b |
        cis4 dis e2\fermata |
        b4 cis d cis |
        b2 a2\fermata |
        b4 b e e |
        d4 d cis2\fermata |
        b4 b a gis |
        fis2 e2\fermata |
        a4 a d d |
        cis4 cis b2\fermata |
        a4 a a a |
        b2 e,2\fermata |
        e'4 d cis b |
        a4 gis fis2\fermata |
        b4 a d cis |
        b2 a2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 e fis e |
        e4 fis gis2 |
        gis4 a4 ~ a8 gis a4 |
        a4 gis e2 |
        gis4 gis gis ais |
        fis4 fis fis2 |
        fis4. e8 e dis e4 |
        e4 dis b2 |
        e4 e fis8 gis a b ~ |
	b8 a16 gis a4 a gis\fermata |
        fis4 g fis fis |
        fis8 e fis4 b,2 |
        cis8 a'4 gis8 a4. gis8 ~ |
	gis8 fis ~ fis eis8 fis2 |
        fis8 gis a4 a8 gis a4 |
        a4 gis e2 |
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
        a4 a a gis |
        a4 a b2 |
        e4 e d8 b e4 |
        fis8 d b e16 d cis2 |
        e4 e e8 d cis4 ~ |
	cis4 b4 b ais\fermata |
        dis8 cis b4 cis8 a b4 |
        cis4 b8 a gis2 |
        a8 b cis b a gis fis e |
        e'4 e e2 |
        cis8 d e4 ~ e d8 cis |
        b8 gis a b16 a gis2 |
        a8 cis d b e fis b, e16 d |
        cis4 ~ cis8. b16 a2 |
        d4 e d8 b cis e |
        fis8 d b e16 d cis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        a4 cis d e |
        a8 gis fis4 e2\fermata |
        e8 d cis4 b a |
        d4 e a,2\fermata |
        e'4 e8 d cis4 fis |
        b,8 cis d e fis2\fermata |
        b8 a! gis4 fis e |
        a,4 b e2\fermata |
        cis8 b a gis fis e fis gis |
        a8 b cis d e2\fermata |
        fis8 e d cis d e fis e |
        dis8 e4 dis8 e2\fermata |
        a,4 b cis8 d e4 |
        fis4 cis d2\fermata |
        d8 e d cis b e a, cis |
        d8 b e4 a,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "169." }
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

