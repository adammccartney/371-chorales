
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 161.6" }
      piece = \markup { \hspace #0.1 \fontsize #2 \bold { "Herzlich tut mich verlangen" \italic "  (old: Befiehl du deine Wege)" } }
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
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
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
        c4 c b b |
        a2.\fermata } %fin du repeat
        c4 |
        b8 c16 d g,4 a b |
        c2 c4\fermata g |
        a4 g a f |
        e2\fermata r4 c'4 |
        b4 d c b |
        a2 b4\fermata e, |
        f4 e d g |
        e2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e4 |
        e8 d d4 d4 c8 b |
        a2 b4 e |
        e4 f f e8 d |
        cis4 d c^\fermata } %fin du repeat
        a'8 g |
        f4 e e8 c f4 |
        e8 g4 f8 e4 c |
        c4 c8 bes a4 a8 b |
        cis2 r4 e4 |
        e4 d e8 fis g gis |
        a4 a, e' c8 cis |
        a8 b c!4 d d4 |
        d8 c16 b c8 b16 a gis4^\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key e \phrygian % c \major % a \minor 
	\clef treble
	\clef bass
	%\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        g8 b |
        a8 c b4 c8 g g4 |
        a8 f d d' gis,4 gis |
        a4. c8 d d, g! f |
        e4 f8. g16 a4\fermata } %fin du repeat
        e' |
        d4 d8 c c4 d |
        g,4 a8 b c4 c |
        f,4 e e f8 g |
        a2 r4 a4 |
        g4 b b8 a e' d |
        c8 cis d4 gis, a8 g |
        f8 g a4 a b |
        b8 e,4 c'8 c8[ b]\fermata
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
        a8 g! f e d b e4 |
        a,2.\fermata } %fin du repeat
        a'4 |
        d,4 e f d |
        c2 c4\fermata e |
        f4 c cis d |
        a2\fermata r4 a4 |
        e'4 b c8 d e4 |
        f2 e4 a |
        d,4 a8 g f fis g4 |
        gis4 a e\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "270." }
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

