
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 378" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Meine Augen schließ ich jetzt in Gottes Namen zu" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
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
        g4 |
        g4 d g a |
        b2\fermata r4 d4 |
        e4 d c4. d8 |
        b2\fermata r4 d4 |
        c4 b a g |
        a2\fermata r4 b4 |
        g4 c b a |
        g2\fermata r4 b8 c |
        d4 d c b |
        a2\fermata r4 b4 |
        g4 g a b |
        c2 b4\fermata d |
        c4 a b c |
        d2\fermata r4 g,4 |
        a4 b c b |
        a2 g4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 |
        d4 a d e8 fis |
        g2 r4 g4 ~ |
	g8 fis8 g4 ~ g8 fis16 e fis4 |
        g2 r4 g4 ~ |
	g8 fis8 g4 ~ g8 fis g8 g, |
        d'2 r4 fis4 |
        fis8 e16 fis g8 a ~ a8 g g8 fis |
        d2 r4 g4 |
        g4 g g8 fis g4 |
        g4 fis4\fermata r4 fis4 |
        e4 d e e |
        e2 e4 d8 f |
        e8 g4 fis!8 g4 g |
        g2 r4 e4 ~ |
	e8 fis8 g4 ~ g8 fis g4 |
        g8 fis16 e fis4 d
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
        b8 a |
        g4 fis g c |
        d2 r4 d4 |
        c4 d e8 d16 c d4 |
        d2 r4 b4 |
        c4 d d4. cis8 |
        fis2 r4 b,4 |
        b4 e8 d d4 d8. c16 |
        b2 r4 d4 |
        d8 c b4 c d |
        d2 r4 b4 |
        b8 c d4 c b ~ |
	b8 a16 gis a4 a8 gis!8\fermata g4 |
        g4 d' d e |
        d2 r4 b4 |
        c8 d d e16 d c4 d |
        e4 d8. c16 b4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        g8 a |
        b8 c d c b4 a |
        g2\fermata r4 b4 |
        c4. b8 a4 d, |
        g2\fermata r4 g4 |
        a4 b8 c d4 e |
        d2\fermata r4 dis4 |
        e4. fis8 g4 d |
        g,2\fermata r4 g8 a |
        b4. e8 a,4 b8 c |
        d2\fermata r4 dis4 |
        e8 d! c b c b a gis |
        a8 b c d e4\fermata b4 |
        c4 d g8 fis e4 |
        b2\fermata r4 e8 d |
        c4 b8 e a,4 b8 g |
        c4 d g,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "258." }
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

