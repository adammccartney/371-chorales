
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 248(5).59" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Nun freut euch, lieben Christen, g'mein (2)" }
                     \line { \italic "old: Es ist gewißlich an der Zeit" }
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
        g4 |
        g8 a b4 a g |
        a4 a b4\fermata g8 a |
        b4 c d c8 b |
        a8 g a4 g\fermata } %fin du repeat
        b4 |
        b4 a g fis |
        g8 a b4 a\fermata a |
        g4 fis g d |
        g4 a b\fermata g8 a |
        b4 c d c8 b |
        a8 g a4 g\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 |
        e8 fis g4 g8 fis g4 |
        g4 fis g e8 fis |
        g8 b4 a16 g fis4 g |
        g4 fis d } %fin du repeat
        g4 |
        g4. fis8 fis e e dis |
        e4 d! d d |
        d8 c d4 d8 c b4 |
        b4 e dis b |
        e4 e d8 e16 fis g4 |
        g4 fis d
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
        b4 |
        b4 e e8 d d4 |
        e8 c a d d4 e |
        d4 g,8 a b c d4 |
        d4 c8 b b4 } %fin du repeat
        d4 |
        d4 d8 c b c fis,8 b |
        b8 a a g fis4 \once \override NoteColumn #'force-hshift = #0.4 fis4 |
        \once \override NoteColumn #'force-hshift = #-1.4 g8 a b c b a g4 |
        g4 fis8 e fis4 e8 fis |
        g4. a8 b c d4 |
        d4 c8 b b4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        g8 fis |
        e4. d8 c4. b8 |
        c8 a d4 g,\fermata c4 |
        g'8 fis e4 b'8 a g4 |
        d'4 d, g\fermata } %fin du repeat
        g8 a |
        b8 c d4 g,8 a b4 |
        e,8 fis g4 d\fermata d'8 c8 |
        b4. a8 g4. fis8 |
        e8 d c4 b\fermata e4 |
        e8 d c4 b8 a g4 |
        d'2 g,4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "362." }
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

