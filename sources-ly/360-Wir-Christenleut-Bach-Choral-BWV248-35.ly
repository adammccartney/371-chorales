
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 248(3).35" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Wir Christenleut" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key fis \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        fis8 gis |
        a4 gis fis\fermata fis8 gis |
        a4 gis fis\fermata cis' |
        b4 a gis\fermata gis |
        a4 a b b |
        cis4 cis b a |
        gis2 fis4\fermata cis' |
        b4 a8 gis gis4\fermata cis |
        b4 a gis\fermata gis4 |
        a4 a b b |
        cis4 cis b a8 gis |
        gis2 fis4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        cis4 |
        fis4 eis fis fis |
        fis4 eis cis fis |
        fis8 eis fis4 eis! eis |
        fis4 fis fis8 gis16 a gis4 |
        gis8 fis eis fis gis4. fis8 |
        fis4 eis cis fis |
        fis8 eis fis4 eis! fis8 e |
        dis8 e fis dis! e4 gis8 eis |
        fis4 a8 fis d4 b'8 gis! |
        a8 g fis4 ~ fis8 eis fis4 ~ |
	fis8 eis16 dis eis!4 cis
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key fis \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a8 b |
        cis4 cis8 b a4 b |
        cis4 cis8 b a4 a |
        b4 cis cis cis |
        cis4 d d8 e16 fis e8 d |
        cis4 b8 a d cis cis d |
        d8 b gis cis a4 a |
        b8 cis dis4 cis cis |
        fis,4 b b cis |
        cis8 a d4 d8 b e4 |
        e8 cis fis e d cis dis4 |
        cis8 gis cis b a4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        fis4 |
        fis8 a cis cis, d4\fermata d |
        cis8 b cis4 fis\fermata fis |
        gis4 a8 b cis4\fermata cis, |
        fis8 e d cis d b e4 |
        a,8 a' gis fis8 ~ fis8 eis fis d |
        b8 gis cis4 fis,\fermata fis'8 e |
        d8 cis bis4 cis4\fermata a |
        b!8 cis dis b e4\fermata eis8 cis |
        fis4 fis8 d g4 gis8 e |
        a4 ais8 fis b4 bis8 gis |
        cis8 b! cis cis, fis4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "360." }
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

