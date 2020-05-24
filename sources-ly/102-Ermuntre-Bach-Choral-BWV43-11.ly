
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 43.11" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Ermuntre dich, mein schwaster Geist" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 | } %fin du repeat
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        r4 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        \tempo 4 = 40 r2. 
	}

  upper = {
	\time 3/4
	\key g \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 g a |
        b4. c8 d4 |
        d4 d cis |
        d2\fermata b4 |
        c2 b4 |
        a2. |
        g4 fis2 |
        g2.\fermata | } %fin du repeat
\break
        a4 a b |
        c2 c4 |
        b4. a8 b4 |
        a2.\fermata |
        b4 b b |
        c4. d8 e4 |
        e4 dis dis |
        e2\fermata fis4 |
        g2 b,4 |
        c2 b4 |
        a4 a\fermata d4 |
        e4. d8 c4 |
        b4 a2 |
        g2.\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 e fis |
        g2. |
        g4 e e |
        fis2 g4 |
        e2 d4 |
        d2. |
        b4 d2 |
        d2. | } %fin du repeat
        d4 d d |
        c2 e4 |
        e2 e4 |
        c2. |
        e4 gis gis |
        a2. |
        a4 fis fis |
        g2 a4 |
        b2 g4 |
        g2 g4 |
        fis4 fis g |
        g4. fis8 e4 |
        d4 d2 |
        d2. |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key g \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        b4 b d |
        d4. c8 b4 |
        b4 a a |
        a2 g4 |
        g2 g4 |
        fis2. |
        e4 a2 |
        b2. | } %fin du repeat
        fis4 fis gis |
        a2 a4 |
        gis4. a8 gis4 |
        a2. |
        gis4 b e |
        e4. d8 c4 |
        c4 b b |
        b2 d4 |
        d2 d4 |
        e2 d4 |
        d4 d d |
        c4. a8 g4 |
        g4 g fis |
        b2. |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        g4 e d |
        g4. a8 b4 |
        g4 a a, |
        d2\fermata g4 |
        c,2 g4 |
        d'2. |
        e4 d2 |
        g,2.\fermata | } %fin du repeat
        d'4 d b |
        a2 c4 |
        e2 e4 |
        a,2.\fermata |
        e'4 e e |
        a4. b8 c4 |
        a4 b b |
        e,2\fermata d4 |
        g2 g4 |
        c,2 g4 |
        d'4 d\fermata b4 |
        c4. d8 e4 |
        g4 d2 |
        g,2.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "102." }
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

