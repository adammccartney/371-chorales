
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 18.5 (Weimar)" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Durch Adams Fall ist ganz verderbt" }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
	\key g \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 |
        g4 g f g |
        es4 d c\fermata g'8 a |
        bes4 c g a |
        bes4 a g\fermata } %fin du repeat
        bes4 |
        bes4 bes8 aes g8 f es f |
        g4 f es\fermata g |
        g4 g f es8 d |
        d2 c4\fermata g' |
        g4 f g a! |
        bes8 a g4 f\fermata c' |
        d4 c g8 a bes4 |
        a4 g a2 |
        g2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 |
        es4 es es d |
        d8 c c b c4 es |
        d4 c8 d es4 es |
        d4 c b } %fin du repeat
        g'4 |
        f8 es d c bes4 c8 d |
        es4 d es bes8 c |
        d4 c c c |
        c4 b c d |
        es4 es8 d es g f es |
        d8 c bes4 a f' |
        f4 es8 d c4 d |
        d8 c bes4 es d8 c |
        b2. 
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        g4 |
        c4 c c g |
        g4 g8 f es4 c' |
        bes8 a g4 c c |
        fis,8 g4 fis8 g4 } %fin du repeat
        d'4 |
        bes4 f g g8 aes |
        bes4. aes8 g4 g |
        g8 f es4 f8 g aes4 |
        g4. f8 es4 g |
        c8 bes aes4 bes c |
        f,4. e8 f4 a |
        bes8 a g fis g4 g |
        fis4 g2 fis4 |
        g2. 
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        b4 |
        c8 d es4 a, b |
        c4 g c\fermata c |
        g'8 f es d c8 bes a g |
        d'2 g,4\fermata } %fin du repeat
        g'4 |
        d8 c bes4 es8 d c4 |
        g8 aes bes4 es,\fermata es' |
        b4 c8 bes aes g f4 |
        g2 c4\fermata b |
        c4 f es8 d c4 |
        bes4 c f,\fermata f' |
        bes,4 c8 d es4 bes8 c |
        d4 es8 d c4 d |
        g,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "100." }
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

