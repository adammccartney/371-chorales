
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 48.7" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Wenn mein Stündlein vorhanden ist (2)" }
                     \line { \italic "old: Herr Jesu Christ, du höchstes Gut" }
                 } }
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
        g4 fis g a |
        bes4 a g\fermata g |
        a4 a d c |
        bes2 a4\fermata } %fin du repeat
        d4 |
        c4 bes a c |
        bes4 a g\fermata bes |
        a4 g f8 e d e! |
        f4 g a\fermata g8 a |
        bes4 c d4. c8 |
        bes4 c8 bes a2 |
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
        es4 d d c |
        bes8 c d c bes4 d8 e |
        f4 f bes4. a8 |
        a8 g16 fis g4 fis } %fin du repeat
        d8 es |
        f4. e8 f4 g |
        g4 fis d e |
        f4 e8 d cis4 d |
        d4 c c c |
        d4 es d8 fis g a |
        bes8 a g2 fis4 |
        d2.
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
        bes4 |
        a4 a g d' |
        d8 e fis4 g bes, |
        c4 d8 es f4 c8 d |
        g,8 d8 d'4 d } %fin du repeat
        f,8 g |
        a4 bes c c |
        d4 d8 c bes4 c |
        c4 bes a8 g f4 |
        bes4 a8 g f4 g |
        f4 g8 a bes4. a8 |
        d4 c8 d es4 d8 c |
        b2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        \repeat volta 2 {
        g4 |
        c,4 d e fis |
        g4 d g,\fermata g' |
        f8 es d c bes d e fis |
        \override Beam #'positions = #'(-2.7 . -2.7) g8 a8 bes c d4\fermata } %fin du repeat
        \revert Beam #'positions 
        bes4 |
        a4 g f es! |
        d8 c d4 g,\fermata c |
        f,4 g a bes8 c |
        d4 e f\fermata es |
        d4 c bes8 d e fis |
        g8 f! es d c4 d |
        g,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "266." }
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

