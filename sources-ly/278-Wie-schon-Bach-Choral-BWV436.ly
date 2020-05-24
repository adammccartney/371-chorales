
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 436" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Wie schön leuchtet der Morgenstern" }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 
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
	\relative c' {
        \repeat volta 2 {
        e4 |
        b'4 gis e b' |
        cis4 cis b\fermata b |
        cis4 dis e dis |
        cis4 cis b\fermata gis |
        cis4 b a gis |
        fis2 e4\fermata } %fin du repeat
        r4 |
        b'2 gis\fermata |
        b2 gis\fermata |
        a4 gis fis gis |
        a4 gis fis gis |
        a4 gis fis2 |
        e2\fermata e'4 dis |
        cis4 b a gis |
        fis2 e4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        \repeat volta 2 {
        b4 |
        b4 b cis dis |
        gis4 fis fis gis |
        a4 a gis fis |
        fis8 gis fis e dis4 e |
        e4 dis e8 fis gis e |
        e4 dis b } %fin du repeat
        r4 |
        fis'2 e |
        fis2 e |
        fis4 e dis e |
        fis4 e dis e |
        fis4 e8 dis cis dis16 e dis4 |
        b2 gis'4 fisis |
        gis4 gis8 fis e4 e |
        e4 dis b
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
        \repeat volta 2 {
        gis4 |
        fis4 e8 fis gis ais b4 |
        b4 ais dis e |
        e4 fis b, b |
        b4 ais b b |
        a8 gis fis4 cis' b |
        b4. a8 gis4 } %fin du repeat
        r4 |
        b2 b |
        dis2 cis2 |
        cis4 b b b |
        b4 b b b |
        cis8 dis e4 ~ e8 cis b a |
        gis2 cis8 b ais4 |
        gis4 dis' cis b |
        cis4 b8 a! gis4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        \repeat volta 2 {
        e4 |
        dis4 e cis gis' |
        e4 fis b,\fermata e |
        a4 gis8 fis gis ais b4 |
        fis4 fis, b\fermata e |
        a,4 b cis8 dis e4 |
        b2 e4\fermata } %fin du repeat
        r4 |
        dis2 e\fermata |
        b2 cis\fermata |
        fis4 gis a8 gis fis e |
        dis4 e b8 b' a gis |
        fis4 cis8 b a4 b |
        e2\fermata cis4 dis |
        eis8 fisis gis4 cis,8 dis e4 |
        ais,4 b e4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "278." }
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

