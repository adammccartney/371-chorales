
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 268" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Auf, auf, mein Herz, und du, mein ganzer Sinn" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
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
        b4 |
        b4 b b\fermata e |
        d4 d c c |
        b4\fermata g a a |
        b4 c d8 c b4 |
        a4 a g\fermata a |
        a4 a a\fermata b8 a |
        g4 g a g |
        fis2 fis4\fermata fis |
        g4 g a a |
        b4 c d8 c b4 |
        a2 g4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 |
        g8 e b' a g4 a8 g |
        fis8 e fis gis a4 e8 fis |
        g!4 d d8 e fis e |
        d4 g8 e fis a g4 ~ |
	g8 fis16 e fis4 d e |
        fis8 g fis e fis4 fis ~ |
	fis4 e4 ~ e8 fis b, e ~ |
	e8 dis8 e cis dis!4 b |
        b4 e8 d e fis16 g a8 fis |
        d8 e16 fis g8 fis16 e fis8 a4 g8 |
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
        d4 |
        d8 e fis4 e e |
        a,8 g a b c b a4 |
        d4 b a d8 c |
        b8 a g4 a8 fis g b |
        e8 c a d16 c b4 cis |
        d8 cis d e d4 b |
        b4 b a8 fis g4 |
        c4 cis b b8 a |
        g8 fis g b c4 ~ c8 d16 c |
        b4 ~ b8 a16 g a8 fis' d e |
        e8 c a d16 c b4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g8 fis |
        g4 dis e\fermata c |
        c4. b8 a gis a4 |
        g!4\fermata g' fis8 e d4 |
        g8 fis e4 d e8 d |
        c8 a d4 g,\fermata g' |
        fis8 e d cis d4\fermata dis |
        e8 fis g e cis dis e c |
        a4 ais b\fermata dis |
        e8 d! c b a g fis d |
        g8 g' e a fis d g e |
        c8 a d4 g,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "124." }
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

