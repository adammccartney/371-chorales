
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 273" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Christ, der du bist der helle Tag" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key g \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 |
        g4 bes a g |
        bes4 c d\fermata d |
        d4 d8 es f es d4 |
        c4 c bes\fermata bes |
        bes4 d c a |
        bes4 c d\fermata d |
        d4 d c c |
        bes4. a16 g f4\fermata f |
        bes8 c d4 c d |
        bes4 a g\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 |
        d8 e f g f es d4 |
        g8 f es f f4 f |
        f4 g a bes ~ |
	bes8 a16 g a4 f g |
        g8 a bes4 bes8 a16 g f4 |
        f4 f f f |
        f4 f f8. es16 d4 ~ |
	d4 e4 d d |
        g8 a bes4 bes a |
        a8 g4 fis8 d4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        bes4 |
        bes4 d8 c c4 bes8 a |
        g16 a bes4 a8 bes4 bes8 c |
        d8 c bes4 c bes8 d |
        g4 f8 es d4 d |
        es4 f f c |
        bes4. a8 bes4 bes |
        bes4 bes4 ~ bes8 a a4 ~ |
	a8 g8 g a16 bes a4 bes8 c |
        d8 c bes a g4 d' |
        d8 es a, d bes4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        g4 |
        g'4 d8 e f fis g f |
        es8 d c f bes,4\fermata bes |
        bes'8 a g4 f g8 f |
        es4 f bes,\fermata g'8 f |
        es8 d c bes f'4. es8 |
        d8 bes f'4 bes,\fermata bes |
        bes8 c d es f4 fis8 d |
        g4 cis, d\fermata bes8 a |
        g4 g'8 f e4 fis |
        g8 c, d4 g,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "230." }
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

