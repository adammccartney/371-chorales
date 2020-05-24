
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 366" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Ihr Gestirn, ihr hohen Lüfte" }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 |
        R2. |
        r2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 | } %fin du repeat
        R2. |
        R2. |
        R2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        r2 \tempo 4 = 30 r4 |
	}

  upper = {
	\time 3/4
	\key d \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d2 e4 |
        f2 g4 |
        a2 d4 |
        cis2 cis4\fermata |
        d2 e4 |
        f2. |
        f,4 g4. g8 |
        f2.\fermata | } %fin du repeat
        g2 g4 |
        a2 c4 |
        bes2 g4 |
        a2 a4\fermata |
        c2 c4 |
        d2 f4 |
        e4 d cis |
        d2 d4\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        a2 cis4 |
        d2 e4 |
        f4. g8 a4 |
        a2 a4 |
        a2 a4 |
        a4. g8 f e |
        f2 e4 |
        c2. | } %fin du repeat
        e4 f g4 ~ |
        g8 f ~ f e f4 |
        f4 e8 d e4 |
        f2 f4 |
        a2 a8 g |
        f8 e f g a4 |
        bes8 g f e e g |
        fis2 fis4 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key d \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        f8 g a4 g |
        a2 bes4 |
        c4 d8 e f4 |
        e2 e4 |
        f2 e4 |
        d8 cis d e d c |
        bes8 a d4 c8. bes16 |
        a2. | } %fin du repeat
        c2 c4 |
        c4. bes8 a4 |
        d2 c4 |
        c2 c4 |
        f2 f8 es |
        d2 c4 |
        bes4 b a |
        a2 a4 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        d8 e f g f e |
        d4 c8 bes a g |
        f8 g f e d4 |
        a'2 a4\fermata |
        d8 e f e d cis |
        d2. ~ |
	d8 c8 bes4 c |
        f,2.\fermata | } %fin du repeat
        c'4 d e |
        f4 g a |
        g4 g, c |
        f2 f4\fermata |
        f4 f,8 g a4 |
        bes4 bes' a |
        g4 gis a |
        d,2 d4\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "161." }
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

