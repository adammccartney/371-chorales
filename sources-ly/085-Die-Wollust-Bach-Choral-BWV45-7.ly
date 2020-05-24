
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 45.7" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Die Wollust dieser Welt" }
                                  \line { \italic "old: O Gott, du frommer Gott (1)" }
                              } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
	\key e \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        b4 |
        gis4 fis8 e b'4 b |
        cis2\fermata r4 cis |
        fis,4 fis b a |
        gis4 fis e\fermata b' |
        cis4 cis b a |
\break
        gis2\fermata r4 fis |
        gis4 ais b cis |
        dis4 cis8 b b4\fermata b |
        b4 b e d |
        cis2\fermata r4 cis |
        cis4 cis fis e |
        dis2\fermata r4 b |
        cis4 b cis dis |
        e2\fermata r4 b |
        b4 a8 gis fis4 fis |
        e2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 |
        e4 dis e8 fis gis4 |
        a2 r4 fis8 e |
        dis8 cis dis4 e fis |
        e4 dis b e |
        e4 a a8 gis fis4 |
        e2 r4 fis |
        fis4 e fis gis |
        fis2 dis4 fis |
        e4 e e8 fis gis4 |
        a2 r4 a4 |
        a4 ais b b8 ais! |
        b2 r4 b |
        a4 b b8 a gis fis |
        e2 r4 fis |
        e4 e e dis |
        b2. 
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key e \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        gis8 a |
        b4 a b e |
        e2 r4 cis |
        b4 b b b |
        b4. a8 gis4 b4 |
        a8 cis fis e dis8 e e dis |
        b2 r4 b |
        b4 cis fis,8 b b4 |
        b4 ais fis b8 a |
        gis8 fis gis a b4 e |
        e2 r4 e |
        fis4 cis dis e |
        fis2 r4 e |
        e4 e a, b8 a |
        gis2 r4 fis8 gis16 a |
        gis4 a8 b cis4 b8 a |
        gis2. 
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        e,4 |
        e'4 fis gis fis8 e |
        a2\fermata r4 ais |
        b4 a! gis dis |
        e4 b e,\fermata gis' |
        a4 fis b b, |
        e2\fermata r4 dis |
        e4 cis dis e |
        fis4 fis, b4\fermata dis |
        e8 dis e8 fis gis4 fis8 e |
        a2\fermata r4 a8 gis |
        fis4 e dis cis |
        b2\fermata r4 gis' |
        a4 gis fis b, |
        cis2\fermata r4 dis |
        e8 dis cis b a4 b |
        e,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "85." }
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

