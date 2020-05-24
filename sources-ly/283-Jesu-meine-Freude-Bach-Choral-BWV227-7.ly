
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 227.7" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Jesu, meine Freude" }
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
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        \tempo 4 = 40 r1 \tempo 4 = 78 | } %fin du repeat
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 40 r1 |
	}

  upper = {
	\time 4/4
	\key e \minor
	\clef treble

	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        b4 b a g |
        fis2 e\fermata |
\break
        b'4 cis d b |
        e2 dis\fermata |
\break
        e8 fis g4 fis4. fis8 |
        e1\fermata | } %fin du repeat
\break
        b4 b c b |
        a4 a g2\fermata |
        b4 cis d b |
        e4 d cis2 |
        b2\fermata b4 b |
        a4 g fis2 |
        e1\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        r8 g8 b g g fis4 e8 |
        e8 dis16 cis dis4 e8 dis! e fis |
        g16 fis g8 r8 e8 a4. g16 fis |
        g8 a16 b a4 b r8 c8 |
        b8 a g b c a fis4 |
        b8 gis e a gis2\fermata | } %fin du repeat
        g!8 a a g g a a g |
        g4 fis g8 d e fis |
        g8 d g4 r8  a4 g16 fis |
        e8 g fis b b4 ais |
        b8 fis b a! g2 ~ |
        g8 fis4 e8  e d!16 cis d4 |
        d8 e16 d c! b c8 b2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key e \minor
	\clef bass

	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        r8 b8 e b e dis e g, |
        c8 b16 a b8 a g a g fis |
        e8 e r4 r8 fis8 d' a |
        b8 a16 g e' dis e8 fis4 r4 |
        r8 dis8 e4. e8 d4 ~ |
	d4 c16 b c8 b2 | } %fin du repeat
        e8 fis fis e e d! d e |
        e4 d8 c! c b c a |
        g8 b e a,8 ~ a8 g16 fis d'4 ~ |
	d8 cis8 d e16 fis g8 cis,! fis e |
        dis4 r8 b8 e e16 dis! e4 ~ |
	e8 dis8 e g, c a fis b |
        b8 gis! e a gis!2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        r8 e8 g e c' r8 r8 b8 |
        a8 fis b b, e4\fermata r4 |
        r8 e8 a g fis d g4 ~ |
	g8 fis16 e c'4 b8\fermata c b a |
        g8 fis e g a fis b a |
        gis8 e a a, e'2\fermata | } %fin du repeat
        e8 dis dis e e fis g e |
        c8 cis d4 g,2\fermata |
        r8 g'4 fis16 e fis8 d g fis |
        gis8 ais b g e eis fis4 |
        b,2\fermata r8 e8 g e |
        c'8 r8 r8 b8 a fis b a |
        gis8 e a a, e'2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "283." }
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

