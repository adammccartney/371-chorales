
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 261" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Allein zu dir, Herr Jesu Christ" }
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
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        R1 |
	R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
	\time 2/4
        r2 |
	\time 4/4
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        R1 |
        \tempo 4 = 34 r2.
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
	\relative c'' {
	\repeat volta 2 {
        d4 |
        a4 b8 cis d e fis4 |
        e4 d2 cis4 |
        d2\fermata r4 fis |
        e4 d cis8 b a4 |
        b4 cis8 d e2 ~ |
	e4 d4 cis2 |
        b2\fermata r4 } %fin du repeat
        fis'4 |
        g4 e fis d |
        e4 fis b,\fermata fis' |
        g4 e fis d |
	\time 2/4
        e4 fis |
	\time 4/4
        b,2\fermata r4 d |
        cis4 b a b |
        g4 g fis\fermata r4 |
        r4 b a d ~ |
	d4 cis4 d\fermata r4 |
        r4 a b cis |
        d8 e fis2 e4 |
        e4 d cis cis |
        b2\fermata r4
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        fis8 g |
        a4 g a ais8 b |
        cis4 fis, e e |
        fis2 r4 a |
        a8 g fis4 g fis |
        g2. fis8 gis |
        ais4 b8 a g4 fis8 e |
        d2 r4 } %fin du repeat
        b'4 |
        b4 a a g |
        g4 fis fis b |
        b4 a a g8 fis |
	\time 2/4
        e4 a |
	\time 4/4
        g2 r4 fis |
        eis4 fis8 gis cis,4 fis |
        fis4 e dis r |
        r4 e2 a4 ~ |
	a4 g4 fis r |
        r4 fis e e |
        d4 d'8 cis b ais b cis |
        ais4 b8 a g4 fis8 e |
        dis2 r4
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
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        a4 |
        d4 d d d |
        cis4 d8 cis b4 a |
        a2 r4 d |
        cis4 d e8 d cis4 |
        d4 e ais,8 b cis4 ~ |
	cis4 b2 ais4 |
        b2 r4 } %fin du repeat
        d4 |
        d8 b cis4 cis8 a b4 |
        b4 cis d fis |
        e4 e d d8 cis |
	\time 2/4
        b4 b |
	\time 4/4
        b2 r4 b |
        b8 a4 gis8 fis4 fis |
        g!8 a b cis dis4 r |
        r4 b8 cis16 d! cis4 d8 e |
        fis4 e d r |
        r4 d gis, ais |
        b8 cis d2 cis4 ~ |
	cis4 b2 ais4 |
        b2 r4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        d8 e |
        fis4 g fis4. gis8 |
        ais4 b8 a gis4 a |
        d,2\fermata r4 d' |
        a4 b e, fis ~ |
	fis4 e8 d cis b ais cis |
        fis4 g8 fis e4 fis |
        b,2\fermata r4 } %fin du repeat
        b'4 |
        e,4 a d, g8 fis |
        e4 ais, b\fermata d' |
        d4 cis cis b8 a |
	\time 2/4
        g8 fis e dis |
	\time 4/4
        e2\fermata r4 b |
        cis4 dis8 eis fis4 dis! |
        e8 fis g a b4\fermata r |
        r4 g2 fis8 g |
        a4 a, d\fermata r4 |
        r4 d d' cis |
        b4. a!8 g fis g e |
        fis4 g8 fis e4 fis |
        b,2\fermata r4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "359." }
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

