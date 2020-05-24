
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 294" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Der Tag der ist so freudenreich" }
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
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
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
        g4 g a b |
        c8 b a4 g2\fermata |
        a4 a e fis |
        g4 a g\fermata } %fin du repeat
        g4 |
        d'4 d e d8 c |
        b4 cis d\fermata d |
        d4 d e d8 c |
        b4 a g2\fermata |
        e4 fis g e |
        d4 cis d2\fermata |
        g4 g a b |
        c8 b a4 g2\fermata |
        a4 a e fis |
        g8 fis e4 d\fermata f |
        e4 c e fis! |
        g4 a g\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 |
        e4 e4. fis8 g4 |
        g4. fis8 d2 |
        fis4 e8 d e4 ~ e8 d16 c16 |
        b8 g d'4 d4 } %fin du repeat
        d4 |
        d4 g8 a b c b a |
        g4 g a a |
        g4 g g a ~ |
	a8 g4 fis8 d2 |
        c4 c d8 b4 a8 |
        a8 b a4 a2 |
        e'4 e e8 fis g4 |
        g4. fis8 d2 |
        d4 d cis d |
        d4 cis a d |
        c4 g c d |
        d4. c8 b4
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
        b4 c c d8 f8 |
        e4 a,8 d16 c b2 |
        d4 c8 b8 ~ b a8 ~ a b16 a |
        g4. fis8 b4 } %fin du repeat
        b4 |
        a8 c b a g4 d' |
        d4 e fis d8 c |
        b8 c d b c b a d |
        d4 d8. c16 b2 |
        g4 a d,8 g4 fis16 e |
        fis4 e8 fis16 g fis2 |
        b4 c c d8 f |
        e4 a,8 d16 c b2 |
        fis8 g a4 a a |
        b4 e,8 a16 g fis4 g |
        g4 e a a |
        g4 fis g
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        g8 fis8 |
        e8 d c b a4 g |
        c4 d g,2\fermata |
        d'4 a8 b c4 d |
        e4 d g,\fermata } %fin du repeat
        g'4 |
        fis4 g8 fis e4 fis |
        g8 fis e4 d\fermata fis |
        g8 a b g c4 fis, |
        g4 d g,2\fermata |
        c8 b a4 b cis |
        d4 a d,2\fermata |
        e'8 d c b a4 g |
        c4 d g,2\fermata |
        d8 e fis g a g fis4 |
        e4 a d\fermata b |
        c4. b8 a4 d8 c |
        b8 g d'4 g,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "158." }
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

