
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 248.42" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Hilf, Herr Jesu, laß gelingen (2)" }
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
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 | } %fin du repeat
        R2. |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. |
	}

  upper = {
	\time 3/4
	\key f \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        c4 a2 |
        g2 f4 |
        bes4 c4. d16 es |
        d2. |
        c2.\fermata |
        d4 bes2 |
        c2 f,4 |
        bes4 a2 |
        g2.\fermata | } %fin du repeat
        e'4 c2 |
        a2 d4 |
        cis4 d4. e16 f |
        e2. |
        a,2.\fermata |
        d4 e f |
        g4 c, bes |
        a4 d bes |
        g2. |
        f2.\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        a4 f2 |
        f4 e f |
        d4 g f |
        f2. |
        f2. |
        a4 g2 |
        g4 f f |
        f8 g g4 f |
        e2. | } %fin du repeat
        g8 f g4 g |
        g4 f f |
        g4 a bes8 a |
        g8 f g4. e8 |
        f2. |
        f4 g a |
        g8 f g4 e |
        c4 bes f' |
        f4 e8 d e4 |
        c2. |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key f \major
	\clef bass
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        f4 c2 |
        c4. bes8 a4 |
        bes2 a8 bes16 c |
        c4 bes8 a bes4 |
        a2. |
        f'4 d2 |
        c8 bes a4 a |
        d8 c c2 |
        c2. | } %fin du repeat
        c2 e4 |
        c2 bes4 ~ |
	bes4 a4 d8 c |
        bes4 a8 g a4 |
        a2. |
        bes4. g8 c4 |
        c2 g4 |
        f2 d'4 |
        g,4 c bes |
        a2. |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        f8 g a4 f |
        c2 d4 |
        g8 f es4 f |
        bes,8 c d4 bes |
        f'2.\fermata |
        d4 g f |
        e4 f8 e d c |
        d8 e f4 f |
        c2.\fermata | } %fin du repeat
        c8 d e4 c |
        f8 e f4 bes |
        e,4 f d |
        d4 cis8 b cis4 |
        d2.\fermata |
        bes'8 a g4 f |
        e8 d e4 c |
        f4 bes,2 |
        c8 bes c2 |
        f,2.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "368." }
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

