
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 329" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Lob sei dir, gütiger Gott" }
                     \line { \italic "old: Herr, ich denk' an jene Zeit" }
                 } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 40 r1 |
	}

  upper = {
	\time 4/4
	\key es \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        es4 es bes' bes |
        c4 d es2\fermata |
        d4. es8 f4 bes, |
        es4 d c2 |
        bes2\fermata es4 es |
        bes4 bes aes aes |
        g2\fermata bes4 bes |
        aes4 g f2 |
        es2\fermata f4 f |
        g8 a bes4 bes a! |
        bes2\fermata c4 d |
        es2\fermata bes4 bes |
        aes4 g f2 |
        es1\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        bes4 bes es g8 f |
        es4 f g2 |
        f4 bes4 ~ bes8 aes g4 ~ |
	g8 f8 f4 g f8 es |
        d2 g4 g |
        f4 f8 g ~ g c, f8 es16 d |
        es2 f4 es |
        f4 ~ f8 es es4 d |
        bes2 d4 d |
        es4 f8 g f4 f |
        f2 f8 aes ~ aes g |
        g2 f8 aes ~ aes g |
        f4. es8 ~ es8 d16 c d4 |
        bes1 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key es \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g4 g8 aes bes es4 des8 |
        c8 bes aes4 bes2 |
        bes4 bes bes bes ~ |
	bes8 a8 bes2 a!4 |
        f2 bes4 bes8 c |
        d4 ~ d8 c c4 bes |
        bes2 d8 c bes4 |
        bes4 bes c8 f, bes aes |
        g2 bes4 ~ bes8 aes |
        bes8 c d4 c8 d es4 |
        d2 c8 f d4 |
        c2 f4 ~ f8 es8 ~ |
	es8 d16 c bes4 c bes8 aes |
        g1 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        es4. f8 g4 es |
        aes8 g f4 es2\fermata |
        bes'8 aes g4 d es8 d |
        c8 f bes, d es c f4 |
        bes,2\fermata es,8 f g aes |
        bes8 c d es f es d bes |
        es2\fermata bes'8 aes g f |
        es8 d es4 aes, bes |
        es,2\fermata bes''8 aes g f |
        es4 d8 es f2 |
        bes,2\fermata aes'!4 b, |
        c2\fermata d4 es |
        f4 g aes bes8 bes, |
        es1\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "212." }
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

