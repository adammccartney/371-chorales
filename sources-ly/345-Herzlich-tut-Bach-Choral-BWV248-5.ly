
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 248(1).5" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Herzlich tut mich verlangen" }
                     \line { \italic "old: O Haupt voll Blutt und Wunden" }
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
        \tempo 4 = 40 r2. \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
        \key e \phrygian % c \major % a \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e4 |
        a4 g f e |
        d2 e4\fermata b' |
        c4 c b8 c16 d b4 |
        a2.\fermata } %fin du repeat
        c4 |
        b8 a g4 a b |
        c2 c4\fermata g |
        a4 g f8 e f4 |
        e2.\fermata c'!4 |
        b8 c d4 c b |
        a2 b4\fermata e, |
        f4 e d g8 f |
        e2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e8 d |
        c8 d d e e d d c |
        c4 b8 a b4 e |
        e4 a a gis |
        e2. } %fin du repeat
        a8 g |
        f4 e8 d c4 f |
        f4 e8 d e4 e |
        f4 bes,8 a a g a d |
        cis2. d4 |
        d4 g g8 fis g4 |
        g4 fis g g |
        c,8 d c4 f, d' |
        d4 c b^\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
        \key e \phrygian % c \major % a \minor
	\clef bass
	%\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        gis4 |
        a4 b c8 d g,4 |
        a8 gis a4 gis gis! |
        a8 b c4 f e8 d |
        c2. } %fin du repeat
        e4 |
        d8 c b4 a8 g f g |
        a4 g8 f g4 c |
        c8 d e4 d8 cis d gis, |
        a2. a4 |
        g8 a b4 c8 d e4 |
        e4 d d c |
        c8 b b a a4 g8 a |
        b4 a gis
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        e4 |
        f4 g a,8 b c4 |
        f,2 e4\fermata e' |
        a8 g! f e d b e8 e, |
        a2.\fermata } %fin du repeat
        a'4 |
        d,4 e f8 e d4 |
        a8 b c4 c,\fermata c' |
        f8 e d cis d4 d |
        a2.\fermata fis4 |
        g4 g'8 fis e4. d8 |
        c8 a d4 g,\fermata c8 b |
        a8 b c4 ~ c8 b8 ~ b a |
        gis4 a e\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "345." }
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

