
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 411." }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Singt dem Herrn ein neues Lied" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 | 
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 | } %fin du repeat
        R1 |
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
	\key g \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 g g d |
        g4 a b2\fermata | 
\break
        g8 a b cis d4 fis |
        e2 d2\fermata | } %fin du repeat
\break
        e4 d c e |
        d4 c b2 |
        a2\fermata a4 gis |
        a4 b c c |
\break
        b2\fermata g!4 a |
        b4 c c b |
        c2\fermata d4. c8 |
        b4 a g8 a b4 |
        a2 g2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d8 c b c d4 d |
        e16 fis g4 fis8 g2 |
        d4 d8 g fis4 a |
        b8 g e a16 g fis2 | } %fin du repeat
        g8 e fis gis a4 e |
        a8 gis a4 a8 gis!16 fis gis!4 |
        e2 e4 e |
        e4 e e e |
        e2 e4 ~ e8 d16 c |
        d8 g4 f16 e a4 g |
        g2 g4 fis |
        d4 d e8 fis g4 ~ |
	g8 fis16 e fis4 d2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
        \key g \major
	\clef bass
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        b8 c d c b c b a |
        b4 e8 d d2 |
        b8 a g4 a d4 ~ |
	d8 cis16 b cis4 a2 | } %fin du repeat
        c4 d e8 d c b |
        a8 b c d16 e f8 d b e16 d |
        c2 c4 b |
        c4 b4 ~ b8 a16 gis a4 ~ |
	a4 gis4\fermata b8 c16 b a4 |
        g8 b a16 b c8 d4 ~ d8 f |
        e2 d4 a |
        g4 a4 b8 c d4 |
        e8 c a d16 c b2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        g8 a b a g a g fis |
        e8 d c d g,2\fermata |
        g'8 fis g e fis e d e16 fis |
        g8 e a4 d,2\fermata | } %fin du repeat
        c'4. b8 a4. g8 |
        f4. e8 d b e4 |
        a,2\fermata a8 c e d |
        c8 b a gis a b c d |
        e2\fermata e8 c f4 ~ |
	f8 e8 a g f d g4 |
        c,2\fermata b8 c d4 |
        g,8 g'4 fis8 e d c b |
        c8 a d4 g,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "246." }
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

