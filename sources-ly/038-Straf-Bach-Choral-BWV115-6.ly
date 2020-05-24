
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 115.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Straf' mich nicht in deinem Zorn" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        \repeat volta 2 {
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 | } %fin du repeat
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 | 
	}

  upper = {
	\time 4/4
	\key es \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
        \relative c'' {
        \repeat volta 2 {
        g4 aes bes bes |
        es,4 f g2\fermata |
        c4 d es g, |
        f2 es\fermata | } %fin du repeat
        bes'4 f g2\fermata |
        c4. bes8 a2\fermata |
        bes4 f g8 a bes4 |
        bes4 a bes2\fermata |
        c4 d es g, |
        f2 es2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
        \relative c' {
        \repeat volta 2 {
        es4 es f8 es d4 |
        es4 es8 d es2 |
        es4 f es8 d es4 |
        es4 d bes2 | } %fin du repeat
        f'8 es d f es2 |
        c2 c2 |
        f4 f4 ~ f8 es d4 |
        c2 d |
        f4 f es es |
        es4 d bes2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
        \time 4/4
        \key es \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
        \relative c' {
        \repeat volta 2 {
        bes4 c f, g |
        g4 c8 bes bes2 |
        aes4 aes bes bes |
        c4 bes8 aes g2 | } %fin du repeat
        bes4 bes bes2 |
        g8 f e! g f2 |
        bes8 c d4 d8 c bes a |
        g4 f f2 |
        aes!4 bes bes bes |
        c4 bes8 aes g2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
        \relative c {
        \repeat volta 2 {
        es8 d c es d8 c bes d |
        c8 bes aes bes es,2\fermata |
        aes8 g f aes g f es g |
        aes8 f bes4 es,2\fermata | } %fin du repeat 
        d'8 c bes d es2\fermata |
        e8 d c e f2\fermata |
        d8 c bes d es f g f |
        es8 c f4 bes,2\fermata |
        f8 g aes f g aes bes g |
        aes8 f bes4 es,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "38." }
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

