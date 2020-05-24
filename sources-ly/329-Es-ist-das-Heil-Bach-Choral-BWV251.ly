
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 251" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line {"Es ist das Heil uns kommen her"}
                     \line { \italic "old:  Sei Lob und Ehr' dem höchsten Gut"}
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
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key g \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        d4 |
        d4 d d8 e f4 |
        e4 d c\fermata d8 c |
        b8 a g a b4 cis |
        d4 e d\fermata } %fin du repeat
        d4 |
        g4 fis e fis |
        g8 fis e4 d\fermata d |
        g4 d e b8 c |
        d4 c b\fermata b |
        a8 b c4 b a |
        e16 fis g4 fis8 g4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        b4 |
        a8 g fis4 g c,8 d |
        e8 f g4 c, a' |
        d,4 e8 fis g fis e4 |
        fis4 g fis } %fin du repeat
        b8 a |
        g8 a a b cis b a4 |
        b8 d a4 a g8 a |
        b8 c b a g4 g |
        fis8 e e fis gis4 g |
        a8 d, g a d,8 g4 fis8 |
        g8 b, e d d4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 |
        d4 a g8 b a g |
        c4 d8 e16 f e4 d |
        d8 c b4 e a, |
        a8 d4 cis8 d4 } %fin du repeat
        d4 |
        d8 e fis g a4 d, |
        d8 b e8 fis16 g fis4 b,8 a |
        g4 g'8 fis e4 e |
        d8 b a4 b b8 g |
        d'4 c8 a b4 c8 a |
        e'4 a, b
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        g4 |
        fis8 e d8 c b g a b |
        c4 g' a\fermata fis! |
        g4. fis8 e fis g a |
        fis8 b g a d,4\fermata } %fin du repeat
        g8 a |
        b8 cis d4 a8 b c4 |
        b8 g a4 d,\fermata g8 fis |
        e4 b c8 d e4 |
        fis8 gis a4 e\fermata g4 |
        fis8 g e fis g e c d |
        e8 d c d g,4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "329." }
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

