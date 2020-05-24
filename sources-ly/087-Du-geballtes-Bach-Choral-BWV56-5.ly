
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 56.5" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Du geballtes Weltgebäude" }
                     \line { \italic "old: Du, o schönes Weltgebäude" }
                 } }
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
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 40 r1 \tempo 4 = 78 | } %fin du repeat
        \repeat volta 2 {
        R1 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 | } %fin du repeat
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key g \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        r4 c2 g4 |
        c4 c bes bes8 a |
        a2 g\fermata |
        r4 es2 g4 |
        f4 es8 d es4 d |
        c1\fermata | } %fin du repeat
        \repeat volta 2 {
        es2 f4 g |
        aes4 aes g g |
        f2 es\fermata | } %fin du repeat
        g4 a! bes g |
        c4 c b2\fermata |
        c4 es d c |
        c4 b4 c2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        r4 es2 d4 |
        fis8 g a4 a8 g g4 |
        g4 fis d2 |
        r4 c2 c4 |
        d8 b c4 c b |
        g1 | } %fin du repeat   
        \repeat volta 2 {
        c2 d4 es |
        f4 f f8 d es4 |
        es4 d bes2 | } %fin du repeat
        es4 es f es |
        es4 es8 d d2 |
        g4 g aes8 g8 ~ g8 f8 |
        g4 g g2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        r4 g2 bes4 |
        c4 es8 d d4 es |
        d4. c8 b2 |
        r4 c2 g4 |
        aes4 a g g8 f |
        es1 | } %fin du repeat
        \repeat volta 2 {
        g2 bes |
        c4 bes bes c |
        c4 bes8 aes g2 | } %fin du repeat
        bes4 c bes bes |
        c8 bes a4 g2 |
        g4 c c8 b c d |
        es4 d e2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        r4 c2 bes4 |
        a4 fis' g c, |
        d2 g,\fermata |
        r4 aes2 es'4 |
        f4 fis g g, |
        c1\fermata | } %fin du repeat
        \repeat volta 2 {
        c4 bes! aes g |
        f4 d' es c |
        aes4 bes es,2\fermata | } %fin du repeat
        es'4 c d es |
        aes,8 g fis4 g2\fermata |
        es'8 d c4 f8 g aes4 |
        g4 g, c,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "87." }
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

