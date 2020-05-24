
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 348 " }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Ich dank dir, lieber Herre" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        r2 
        \repeat volta 2 {
        r2 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        \alternative {
          { r4 |
            r2 }
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            r4 | }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key bes \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        bes4 |
        bes4 bes 
        \repeat volta 2 {
        bes4 c |
        aes4 g f4\fermata c' |
        d4 c bes a!8 g |
        a4 g f4\fermata } %fin du repeat
        \alternative {
          { bes4 |
            bes4 bes }
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            f'4 | }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        es4 d c bes |
        bes8 c d4 c4\fermata d |
        es4 d c b |
        c2.\fermata f,4 |
        bes4 c d es |
        f4 es8 d c4\fermata es |
        d4 c f bes,8 c |
        d4 c bes4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        f4 |
        g4 aes 
        \repeat volta 2 {
        g4 g |
        g8 f4 e8 f4 f |
        f4 e f c4 ~ |
	c8 f4 e!8 c4 } %fin du repeat
        \alternative {
          { f4 |
            g4 f4 }
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            bes8 a8 | }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        g4 f8 g a4 bes8 aes |
        g4 f f f |
        es4 aes8 g8 ~ g f g4 |
        g2. c,4 |
        f4 g8 a bes4 a8 g |
        f4 g a bes |
        aes4 g f f8 g |
        f8 es8 ~ es d d4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key bes \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 |
        d8 es f4 
        \repeat volta 2 {
        es8 d c4 |
        c4 bes a c |
        bes8 a g4 f c' |
        c4 bes a4 } %fin du repeat
        \alternative {
          { bes4 |
            bes8 c d4  }
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            d8 c | }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        bes8 c d es f4 f |
        bes,2 a4 b |
        c4. b8 c4 d |
        es2. a,4 |
        bes4 es, f8 f' es4 ~ |
	es8 d8 c bes f'4 bes, |
        bes4 ~ bes8 c a4 bes |
        bes4 a f4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        bes8 a |
        g4 d 
        \repeat volta 2 {
        es4 e |
        f4 c f,\fermata a |
        bes4 c d e |
        f4 c f,\fermata } %fin du repeat
        \alternative {
          { d'4 |
            es4 bes4  }
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            d4 | }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        g4 bes es, d |
        es4 bes f'\fermata d |
        c4 f8 g aes4 g |
        c,2.\fermata es4 |
        d4 c bes c |
        d4 es f4\fermata g |
        f4 es2 d8 es |
        f4 f, bes4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "272." }
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

