
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 123.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Liebster Immanuel, Herzog der Frommen" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        r2 r2 r2 |
        r2 r2 r2 |
        r2 r2 r2 |
        r1 \tempo 4 = 34 r2 \tempo 4 = 140 |
        r2 r2 r2 |
        r2 r2 r2 |
        r2 r2 r2 |
        \tempo 4 = 70 r1. | } %fin du repeat
        r2 r2 r2 |
        r2 \tempo 4 = 60 r1 \tempo 4 = 140 |
        r2 r2 r2 |
        r2 \tempo 4 = 60 r1 \tempo 4 = 140 |
        r2 r2 r2 |
        r2 r2 r2 |
        r2 r2 r2 |
        \tempo 4 = 70 r1. |
	}

  upper = {
	\time 3/2
	\key b \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        d2 d d |
        cis2. b4 a2 |
        b2 g fis4 e |
        e1\trill d2\fermata |
\break
        a'2 a fis |
        b2. cis4 d2 |
        d,4 e4 e2.\trill fis4 |
        fis1.\fermata | } %fin du repeat
\break
        fis2 fis g |
        a2 fis1\fermata |
        b2 ais b |
        cis2 ais1\fermata |
\break
        d2 cis b |
        ais2. fis4 b2 |
        cis4 d ais2.\trill b4 |
        b1.\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        fis2 fis eis4 fis |
        gis2 eis fis |
        g!2 e d |
        d2 cis a |
        d2 e d |
        d2 g fis |
        fis2 e4 d4 cis4 b4 |
        cis1. | } %fin du repeat
        d2 d d |
        e2 d1 |
        fis2 e fis |
        fis2 fis1 |
        fis2 g e |
        fis2. fis4 fis2 |
        g2 fis fis |
        fis1. |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/2
	\key b \minor
	\clef bass
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        b2 b b4 a |
        gis2 cis cis |
        d2 e4 a, a2 |
        a2. g4 fis2 |
        a2 a a |
        g4 a b2 b |
        b2 b e |
        ais,1. | } %fin du repeat
        b2 b b |
        a2 a1 |
        b2 cis d |
        ais2 cis1 |
        b2 ais b |
        cis2. cis4 b2 |
        e4 d cis2 cis |
        dis1. |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        b2 b'4 a gis fis |
        eis2 cis fis |
        b,2 cis d |
        a'2 a, d\fermata |
        fis2 cis d |
        g2 e b |
        g2 g g' |
        fis1.\fermata | } %fin du repeat
        b,2 d e |
        cis2 d1\fermata |
        d2 cis b |
        fis'2 fis1\fermata |
        b2 e, g |
        fis2 e d |
        e2 fis fis, |
        b1.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "194." }
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
      tempoWholesPerMinute = #(ly:make-moment 140 4)
		}
	    }
	}

