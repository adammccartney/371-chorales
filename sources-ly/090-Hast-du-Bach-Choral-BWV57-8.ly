
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 57.8" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Hast du denn, Liebster, dein Angesicht" }
                                  \line { "gänzlich verborgen" }
                              } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        R2. |
        R2. |
        R2. |
        R2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 | } %fin du repeat
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 3/4
	\key bes \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        bes4 bes f' |
        d4. c8 bes4 |
        a4 bes8 a g f |
        bes4 c d8 es |
        c2 bes4\fermata | } %fin du repeat
\break
        f'4 es8 d c bes |
        g'2\fermata r4 |
        d4 es f |
        f4 g8 f es d |
\break
        c2\fermata r4 |
        f,4 g a |
        bes4 c d8 es |
        c2 bes4\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        f4 f f |
        f4. f8 g4 |
        c,4 c c |
        f4 g8 a bes c |
        a2 f4 | } %fin du repeat
        bes4 a f |
        bes2 r4 |
        bes4 bes a8 g |
        f4 bes g |
        a2 r4 |
        f4 c c |
        bes4 f' f |
        f4. es8 d4 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key bes \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 d c |
        bes4. c8 d e |
        f4 f a, |
        bes4 es, f |
        f'4 es d | } %fin du repeat
        d4 es f |
        es2 r4 |
        f4 g c, |
        c4 bes bes |
        f'2 r4 |
        bes,4 a8 g es'!4 |
        d4 c bes |
        bes4 a f |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        bes4 bes a |
        bes4. a8 g4 |
        f4 c es |
        d4 c bes |
        f'2 bes,4\fermata | } %fin du repeat
        bes4 c d |
        es2\fermata r4 |
        bes'4 a8 g f es |
        d4 d es |
        f2\fermata r4 |
        d4 e fis |
        g4 a bes |
        f2 bes,4\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "90." }
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

