
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 144.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Was mein Gott will, das g'scheh allzeit" }
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
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
	\key b \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        fis4 |
        a4 b a d |
        d4 cis d\fermata d |
        cis4 b e4. d8 |
        cis4 d cis2 |
        b2.\fermata } %fin du repeat
        b4 |
        b4 b cis4. b8 |
        cis4 a a gis |
        a4\fermata a b cis |
        d4 cis b2 |
        cis2.\fermata fis,8 gis |
        a4 b a d |
        d4 cis d\fermata d |
        cis4 b e4. d8 |
        cis4 d cis2 |
        b2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 |
        d4 d d d8 e |
        fis8 g a4 a a |
        a4 g g fis |
        fis2 ~ fis8 g fis e |
        d2. } %fin du repeat
        fis4 |
        e4 d cis dis8 eis |
        fis4 fis fis e |
        e4 e e e |
        fis4 ais b gis |
        ais2. cis,4 |
        fis4 gis fis fis |
        b4 a a gis |
        a4 gis ais4. b8 |
        cis4 b2 ais4 |
        a4 g fis4^\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key b \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        b4 |
        a4 g fis8 g a b |
        a4 e' fis fis |
        e4 e b b |
        ais4 b2 ais4 |
        fis2. } %fin du repeat
        d'8 cis |
        b8 cis b a gis4 a8 b |
        a8 b cis4 b b |
        cis4 cis b ais |
        b4 g' fis eis |
        fis2. a,!8 b |
        cis4 d8 cis cis4 d |
        e4 e fis e8 d |
        e4 e e8 fis g4 ~ |
	g8 fis16 e d8 cis16 b fis'8 cis fis e |
        dis4 e dis4\fermata
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        b4 |
        fis'4 g d8 e fis g |
        a4 a, d\fermata d |
        a'4 e8 fis g a b4 |
        fis8 e d e fis2 |
        b,2.\fermata } %fin du repeat
        b'8 a |
        gis8 a gis fis eis cis fis gis! |
        a8 gis fis e d b e4 |
        a,4\fermata a' gis g |
        fis4 e d8 cis d b |
        fis'2.\fermata fis,4 |
        fis'4 eis fis b8 a |
        gis4 a d,\fermata b |
        a4 e'8 d cis d cis b |
        ais8 g' fis eis fis2 |
        b,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "265." }
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

