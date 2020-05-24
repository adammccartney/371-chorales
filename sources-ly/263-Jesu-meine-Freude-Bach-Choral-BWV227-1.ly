
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 227.1" }
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
        fis2 e2\fermata |
        b'4 cis d b |
        e2 dis2\fermata |
        e8 fis g4 fis4. fis8 |
        e1\fermata | } %fin du repeat
        b4 b c b |
        a4. a8 g2\fermata |
        b4 cis d b |
        e4 d8 cis cis2 |
        b2\fermata b4 b |
        a4 g8 fis fis2 |
        e1\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 fis e8 dis e4 |
        e4 dis b2 |
        g'8 fis e4 d d |
        g8 a b4 b2 |
        g8 a b4 b4. a8 |
        g1 | } %fin du repeat
        g4 g a g |
        g4 fis d2 |
        g4 g a g8 a |
        b4 b b ais |
        fis2 g4 fis |
        e4 e e dis |
        b1 |
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
        e4 b c8 fis, g4 |
        c4 b8 a g2 |
        e'8 d cis b a4 g8 a |
        b4 g' fis2 |
        e4 e e dis |
        b1 | } %fin du repeat
        e4 d d d |
        e4 d8 c b2 |
        d4 e d d |
        g4 fis g fis8 e |
        dis2 e4 fis8 g |
        a8 a, b4 c b8 a |
        gis1 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        e4 d c4. b8 |
        a4 b e2\fermata |
        e4 a8 g fis4 g8 fis |
        e8 fis g a b2\fermata |
        c4 b8 a b4 b, |
        e1\fermata | } %fin du repeat
        e8 fis g4 fis g |
        c,4 d g,2\fermata |
        g'4 fis8 e fis4 g8 fis |
        e4 b e fis |
        b,2\fermata e4 d! |
        c4 b a b |
        e1\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "263." }
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

