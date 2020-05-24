
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 388" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Nun freut euch, lieben Christen, g'mein (1)" }
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
        g4 |
        g4 d g c |
        b4 a g\fermata g |
        a8 b c4 b a |
        e4 fis g\fermata } %fin du repeat
        g4 |
        c4 b a d |
        d4 cis d\fermata d |
        e4 c d4. c8 |
        b4 a g\fermata b |
        a4 d, g c |
        b4 a g\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 |
        d4 a d a' |
        d,4 d8. c16 b4 b8 cis |
        d8 f e fis g4 d8 a16 b |
        c2 b4 } %fin du repeat
        d4 |
        g8 a8 ~ a8 g16 fis e4 a8 fis |
        e8 g8 ~ g8 fis16 e fis4 g |
        g4 g a8 fis g a8 ~ |
	a8 g4 fis8 e4 e4 ~ |
	e8 d16 c b4 e8 d e fis |
        g4. fis8 d4
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
	\relative c' {
	\repeat volta 2 {
        b8 a |
        g4 fis g4 ~ g8 fis |
        g4. fis8 d4 g |
        fis8 gis a4 d,8 e fis4 |
        g4 a d, } %fin du repeat
        b'4 |
        e8 d d4 cis d |
        b8 e, a4 a d4 ~ |
	d8 c16 b c8 e d c b a |
        b16 c d4 c8 b4 g |
        a4 g8 a b4 a |
        d4 ~ d8. c16 b4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        g8 a |
        b8 c d c b4 a |
        g8 b d4 g,\fermata e' |
        d4 a b8 c d4 |
        c8 b a4 g\fermata } %fin du repeat
        g'8 fis |
        e8 fis g4 ~ g8 a16 g fis8 b |
        g4 a8 a, d4\fermata b |
        c8 d e4 fis8 d e fis |
        g4 d e\fermata e4 |
        fis4 g8 fis e4 a, |
        b8 c d4 g,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "183." }
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

