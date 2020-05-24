
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 349" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Ach Herre Gott, mich treibt die Not" }
                     \line { \italic "old: Ich dank' dir schon durch deinen Sohn" }
                 } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. |
	}

  upper = {
	\time 3/4
	\key f \major
	\clef treble
	\partial 2.
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        f4 f f |
        bes2 g4 |
        a2 b4 |
        c2.\fermata |
        a4 bes c |
        d2 bes4 |
        c2. |
        bes2.\fermata |
        c4 a8 bes c4 |
        d2 c4 |
        c4. bes8 a4 |
        g2.\fermata |
        c4 c c |
        bes2 a4 |
        a4 g2 |
        f2.\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        c4 c f ~ |
	f4 e8 d e4 |
        f2 f4 |
        g2. |
        f4 f g8 a |
        bes2 bes4 ~ |
	bes2 a4 |
        f2. |
        g4 f f |
        f2 f4 |
        g8 f e4 f ~ |
	f4 e2\fermata |
        f4 g8 bes a4 |
        g4 f8 e f4 |
        f2 e4 |
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
	\partial 2.
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 a a |
        g8 a bes4 c |
        c2 d4 |
        e2. |
        c4 d es |
        f2 f4 |
        g8 f es d c es |
	es8 d16 c d2\fermata |
        c4 c c ~ |
	c4 bes4 a |
        g4 c c |
        c2. |
        c4 c f8 e |
        d4 c c |
        c4 d c8 bes |
        a2. |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        f4 f8 e d4 |
        g4 g, c |
        f4 e d |
        c2.\fermata |
        f8 es d4 c |
        bes4 c d |
        es4 c f |
        bes,2.\fermata |
        e!4 f a, |
        bes8 c d e f4 |
        e4 c f |
        c2.\fermata |
        a'4 e f |
        g4 c, f |
        a,4 bes c |
        f,2.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "188." }
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

