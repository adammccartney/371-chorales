
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 38.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Aus tiefer Not schrei ich zu dir (1)" }
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
        \tempo 4 = 34 r2 \tempo 4 = 78 r |
        R1 |
        r4 r4 \tempo 4 = 34 r2 \tempo 4 = 78 | } %fin du repeat
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r |
        R1 |
        r4 r4 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 34 r1 
	}

  upper = {
	\time 4/4
	\key a \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        b2 e,4 b' |
        c4 b8 a g4 a |
        b2\fermata b |
        c4 d c8 b a4 |
        g4 f e2\fermata | } %fin du repeat
\break
        a2 g4 c |
        b4 a d8 c b4 |
        a2\fermata c |
        b4 c d g, |
        b4 a g2\fermata |
        g2 c4 b |
        a4 e g f |
        e1\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e2 e4 gis |
        a4 g!8 fis e4 fis |
        gis2 gis |
        a4 b c f, |
        e4 d8 c b2 | } %fin du repeat
        e2 d4 e8 fis |
        g4 a b8 a gis4 |
        e2 a |
        g4 g g8 f e4 |
        d4 c b2 |
        e2 e4 e8 d |
        c4 c d2 ~ |
	d4 c4 b2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key a \minor
	\clef bass
	%\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        gis2 a4 d |
        e4 d e8 d c4 |
        b2 e |
        e4 f g c, |
        c8 b a4 gis2 | } %fin du repeat
        a2 b4 c |
        d4 d8 e f4 b, |
        c2 e |
        e4 e d c |
        fis,8 g4 fis8 g2 |
        g2 a4 gis |
        a4 g! g a |
        b!4 a gis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        d2 c4 b |
        a4 b c8 b a4 |
        e'2\fermata e |
        a4 g8 f e4 f |
        c4 d e2\fermata | } %fin du repeat
        c2 b4 a |
        g8 g' f8 e d4 e |
        a,2\fermata a' |
        e4 d8 c b4 c |
        d4 d, g2\fermata |
        c2 a4 e' |
        f4 c bes a |
        gis4 a e2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "10." }
	\new Staff = "upper" \upper
	\new Staff = "lower" \lower
	>>

    \layout {
%	ragged-last = ##f
	\context {
	\Staff
	\override VerticalAxisGroup #'staff-staff-spacing =
	#'(('basic-distance . 10)
	(minimum-distance . 10)
	(padding . 1.1)
	(stretchability . 10))
	 }

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

