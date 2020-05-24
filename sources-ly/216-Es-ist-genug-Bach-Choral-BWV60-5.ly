
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 60.5" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Es ist genug" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
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
        a2 b4 cis |
        dis2\fermata r4 dis4 |
        e4 b b d |
        cis2.\fermata b4 |
        cis8 dis e4 e dis |
        e2\fermata a, |
        b4 cis dis2\fermata |
        r4 dis4 e b |
        b4 d! cis2\fermata |
        r4 b4 cis8 dis e4 |
        e4 dis e2\fermata |
        r4 b4 b b |
        cis4 b d cis |
        cis2 b\fermata |
        r4 b4 b b |
        cis4 b d cis |
        cis2 b\fermata |
        r4 e4 cis b |
        a2\fermata r4 e' |
        cis4 b a2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e2 e4 d8 cis |
        gis'2 r4 gis |
        gis4. a8 gis fis gis e |
        a2. gis4 |
        a8 b cis4 b a16 gis a8 |
        gis2 e |
        e4 e fis2 |
        r4 fis8 gis16 a gis8 fis gis a |
        b4 gis a2 |
        r4 fis g8 a b4 |
        b8 a16 gis! a8 fis gis2 |
        r4 gis8 a b a b gis |
        a4 b a a |
        a8 gis a fis gis2 |
        r4 fis b, b' |
        ais4 a gis a |
        a8 fis dis4 e2 |
        r4 e e fis8 gis |
        fis2 r4 b |
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
        cis2 b4 fis' |
        fis2 r4 bis,!4 |
        cis8 d^\markup { "(#?)" } e4 e e |
        e2. e4 |
        e8 fis g4 fis b, |
        b2 cis |
        b4 a a2 |
        r4 b b e |
        e4 e e2 |
        r4 dis e8 fis g4 |
        fis4 b, b2 |
        r4 e e e |
        e4 e fis e |
        e4 dis e2 |
        r4 dis e f |
        e4 d! e fis! |
        e8 a, fis4 gis2 |
        r4 b a a8 gis |
        cis2 r4 e |
        e4 d16 cis d8 cis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a2 gis4 ais |
        bis2 r4 gis |
        cis8 b16 a gis8 fis e d cis b |
        a2.\fermata e'4 |
        a4 ais b b, |
        e2\fermata a |
        gis4 g fis2\fermata |
        r4 b,4 e4. fis8 |
        gis4 fis8 e a2\fermata |
        r4 a4 g8 fis e4 |
        b'4 b, e2\fermata |
        r4 e8 fis gis fis gis e |
        a8 b a gis fis gis a a, |
        e'2 e\fermata |
        r4 a4 gis g |
        fis4 f e dis |
        e2 e\fermata |
        r4 gis4 a8 cis, dis eis |
        fis2 r4 gis4 |
        a4 e a,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "216." }
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

