
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 426" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Weltlich Ehr und zeitlich Gut" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
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
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key c \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        c4 b a a |
        a4 b c8 b a4 |
        g2\fermata r4 b4 |
\break
        c4 b c a |
        b4 g a2 |
        b2\fermata r4 b4 |
\break
        b4 b a b |
        c2\fermata g4 g |
        a4 b c a |
        b2\fermata b4 c |
\break
        d4 d c a |
        b2\fermata d4 d |
        d4 d e d8 c |
\break
        b2\fermata b4 g |
        a4 b8 c d c b4 |
        a4 b c2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e8 f g4 ~ g8 f16 e f4 |
        f8 a g4 g4 ~ g8 f |
        f4 e\fermata r4 g4 |
        g4 g g f4 ~ |
	f4 e4 e2 |
        e2 r4 e4 |
        fis8 a ~ a g fis4 e |
        e2 d8 f8 ~ f e8 ~ |
	e8 d8 d4 c8 g'4 fis8 |
        g2 g4. fis8 |
        g8 a b4 a8 g fis4 |
        g2 a4 g8 a |
        b8 a g f e4 fis |
        g2 g8 f! e4 ~ |
	e8 fis8 g4 a4 ~ a8 g8 ~ |
	g8 f!16 e f8 e16 d e2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key c \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g4 g8 c c4 c |
        d8 f e d c4 c |
        c2 r4 d4 |
        e4 d c c |
        d4 b a8 b c a |
        gis2 r4 g4 |
        b8 fis' ~ fis e8 ~ e d c b |
        a2 d4 ~ d8 c16 b |
        c4 b8 a g e' d4 |
        d2 d4 c |
        b4 e e d |
        d2 fis8 e d c |
        b4 b c8 b a4 |
        e'2 d4 c |
        c4 d d d |
        d4 d8 g, g2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        c8 d e4 f8 g f e |
        d4 g8 f e4 f |
        c2\fermata r4 g'4 |
        c,8 e g f e c f e |
        d8 b e d c b a c |
        e2\fermata r4 e4 |
        dis4 e fis gis |
        a2\fermata b4 c |
        fis,4 g8 fis e c d4 |
        g,2\fermata g4 a |
        b4 gis a8 b c d |
        g,2\fermata d''8 c b a |
        g8 f e d c4 d |
        e2\fermata g,4 c8 b |
        a4 g fis g |
        d'4 g, c2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "211." }
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

