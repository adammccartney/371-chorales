
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 42.7" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Verleih' uns Frieden gnädiglich" }
          \line { \hspace #9 "Gib unsern Fürsten und aller Obrigkeit. Aussi BWV 42.7" }
                     \line { \italic "(Presqu'une copie du 91)" }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 40 r2. 
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
        fis4 |
        fis4 fis eis fis8 gis |
        a4 gis fis\fermata a4 |
        b4 b cis8 b a4 |
        b2 cis4\fermata cis |
        cis4 b cis8 b a4 |
        b8 a gis4 fis\fermata fis8 gis |
        a4 a b a8 gis |
        fis2 fis4\fermata b |
        cis4 b fis8 gis a4 |
        gis8 fis gis4 fis\fermata fis |
        fis4 e a b |
        cis8 b a4 b b |
        cis2\fermata d2 |
        cis4 b8 cis16 d b4. a8 |
        a2.\fermata cis4 |
        cis8 b a4 b8 cis d4 |
        cis2\fermata e4 cis |
        d4 cis8 b cis4 cis |
        d4 cis8 d e d cis4 |
        b2 a2\fermata |
        cis4 cis a b |
        a4 gis fis2\fermata |
        e4 fis8 gis a4 fis |
        fis2.\fermata e4 |
        fis4 gis a gis |
        fis2. eis4 |
        fis2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        cis4 |
        d4 d cis2 ~ |
        cis8 fis fis eis cis4 fis |
        e!8 fis gis4 a2 ~ |
        a8 gis16 fis gis4 a a |
        a4 eis8 fis gis4 fis |
        fis4 e dis dis8 eis |
        fis4 fis gis8 fis eis4 |
        fis8 e! d4 cis e |
        e4 e d8 e fis4 ~ |
        fis4 eis cis cis |
        cis4 cis d d |
        cis4 cis fis e |
        e2 b' |
        e,4 fis e e |
        e2. gis4 |
        a8 gis fis4 fis fis8 eis |
        fis2 gis8 b b a |
        a8 gis a gis a b cis4 ~ |
        cis8 b a4 e e |
        fis4 e8 d cis2 |
        e4 e fis fis |
        fis4 e ~ e4 d4\fermata |
        cis4 d e d |
        d2. cis4 |
	cis2. d8 e |
        fis4 gis8 a d,4 cis |
        cis2.
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
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 |
        a4 a gis8 b a gis |
        fis4 cis'8 b a4 cis |
        b4 e e4. d16 cis |
        b4 e e e |
        e8 d d4 cis cis |
        b4 b b b |
        cis4 d d cis8 b |
        a8 ais b4 a b |
        a4 b8 cis d4 cis |
        cis4. b8 a4 a |
        a4 gis fis gis |
        a8 gis a4 a gis |
        a2 gis |
        a4 a a8 fis gis d' |
        cis2. cis4 |
        fis4. e8 d cis b gis |
        a2 b4 e |
        e4 e8 d cis b a gis |
        fis8 gis a4 b a |
        a4 gis e2 |
        a4 a a d |
        cis4 b b2 |
        gis4 a8 b cis4 b |
        a2. a8 gis |
        fis4 b a b |
        a4 gis8 fis gis a b4 |
        ais2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        fis8 e8 |
        d4 cis8 b cis4 dis8 eis |
        fis8 b, cis4 fis\fermata fis |
        gis4 fis8 e a gis fis e |
        d4 e a,\fermata a'8 gis |
        fis4 gis8 fis eis4 fis8 e |
        dis4 e b\fermata b' |
        fis8 e d cis b4 cis |
        d4 cis8 b fis'4\fermata gis4 |
        a4 gis8 a b4 a8 b |
        cis4 cis, fis\fermata fis8 gis |
        a8 b cis4 cis8 d cis b |
        a8 eis fis cis d b e4 |
        a,2\fermata b2 |
        cis4 d e e |
        a,2.\fermata eis'4 |
        fis4. fis8 gis ais b4 |
        fis2\fermata e4 e |
        e4 e8 e e4 e |
        e4 fis gis a |
        d,4 e a,2\fermata |
        a8 b cis a d cis d e |
        fis4 gis8 a b2\fermata |
        cis,4. b8 a4 b8 cis |
        d2. a'4 |
	a8 gis8 fis eis fis4 b,8 cis |
        d8 cis b a b4 cis |
        fis2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "259." }
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

