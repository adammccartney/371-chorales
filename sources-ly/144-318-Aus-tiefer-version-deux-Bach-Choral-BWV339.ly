
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 339" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Aus tiefer Not schrei ich zu dir (2)" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 | } %fin du repeat
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
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
	\repeat volta 2 {
        r4 a4 gis a |
        b4 b a b |
        cis2\fermata r4 d4 |
        cis4 b a gis8 a |
        b2 a\fermata | } %fin du repeat
        r4 a4 b8 cis d4 |
        cis8 b a4 b8 a gis4 |
        fis2\fermata r4 gis4 |
        e4 e b' cis |
        d8 cis b4 a2\fermata |
        r4 e'4 cis cis |
        b4 a gis a |
        b2 a\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        r4 e4 d e |
        fis4 cis cis fis |
        eis2 r4 fis4 |
        e8 cis dis eis fis4 e |
        fis4 e8 d cis2 | } %fin du repeat
        r4 e4 fis eis8 fis |
        gis4 cis, fis4. eis8 |
        cis2 r4 dis4 |
        e8 d! ~ d cis dis e e4 |
        d!8 fis g2 fis4\fermata |
        r4 b4 ~ b8 a16 gis a4 ~ |
	a8 gis16 fis e4 e e |
        e4 ~ e8 d cis2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key a \major
	\clef bass
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        r4 cis4 b a ~ |
	a4 gis4 a gis8 fis |
        gis2 r4 a4 |
        a4 b cis b8 a |
        a4 gis e2 | } %fin du repeat
        r4 cis'4 d8 cis b a |
        gis4 a8 gis fis4 cis'8 b |
        a2 r4 gis4 |
        gis4 a fis8 gis g fis ~ |
        fis8 d d'4 d2 |
        r4 e4 e cis8 d16 e |
        fis8 e a,4 d8 b a4 ~ |
	a4 gis4 e2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        r4 a4 b cis |
        dis4 eis fis8 e d4 |
        cis2\fermata r4 fis8 gis |
        a4. gis8 fis e d cis |
        d8 b e4 a,2\fermata | } %fin du repeat
        r4 a'4 ~ a gis8 fis |
        eis4 fis8 e d b cis4 |
        fis,2\fermata r4 bis4 |
        cis8 b! a4 ~ a8 gis ais4 |
        b4. cis8 d2\fermata |
        r4 gis,4 a8 cis fis e |
        d4. cis8 b e cis a |
        e'4 e, a2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "144." }
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

