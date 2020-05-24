
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 252" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Nun danket alle Gott" }
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
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. 
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
        d4 d e e |
        d2.\fermata b4 |
        c4 b a b8 c |
        a2 g4\fermata } %fin du repeat
        a4 |
        a4 a b b |
        a2.\fermata a4 |
        b8 cis d4 d cis |
        d2.\fermata d4 |
        e4 d c b |
        c2.\fermata b4 |
        a4 b8 c a4 ~ a8 g |
        g2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 |
        a4 g g g8 a |
        b2. g4 |
        a4 d, d d |
        e16 fis g4 fis8 d4 } %fin du repeat
        fis8 g |
        a8 g a fis d4 g |
        fis2. fis4 |
        d8 e fis4 b a8 g |
        fis2. g4 |
        g8 a b4 b8 a a gis |
        a2. d,4 |
        d4. e8 d g fis4 |
        d2.
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
        a8 d b4 c c |
        d2. d4 |
        d4. g8 fis4 g8 g, |
        e'4 a, b } %fin du repeat
        a4 |
        d4 c b8 c d4 |
        d2. d8 c |
        b8 a a d d g e16 d e8 |
        d2. b4 |
        c4 d8 e16 f g8 c, f e |
        e2. g4 |
        fis8 d b a a b c a |
        b2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        g4 |
        fis4 g c,8 d e c |
        g'2.\fermata g4 |
        g8 fis g4 d8 c b e |
        c8 b16 c d8 d, g4\fermata } %fin du repeat
        d'8 e |
        fis8 e fis d g, a b c |
        d2.\fermata d4 |
        g4 fis8 b g e a a, |
        d2.\fermata g4 |
        c,4 g'8 f e f d e |
        a,2.\fermata b8 g |
        d'8 fis g c, d4 d, |
        g2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "330." }
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

