
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 140.7" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Wachet auf, ruft uns die Stimme" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 } %fin du repeat
        \alternative {
          { \tempo 4 = 34 r2 \tempo 4 = 78 }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            \tempo 4 = 30 r4 \tempo 4 = 78 r4 | }
        }
        
        \set Timing.measureLength = #(ly:make-moment 4 4)
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 34 r2 |
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
	\repeat volta 2 {
        es4 g bes4. bes8 |
        bes4 bes c2 |
        bes2\fermata r4 bes4 |
        es4 bes es8 f g4 |
        f4 es d c |
        bes2\fermata r4 bes4 |
        es4 bes c g |
        aes8 g f4 } %fin du repeat
        \alternative {
          { es2\fermata }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            es4\fermata bes'4 | }
        }
        
        \set Timing.measureLength = #(ly:make-moment 4 4)
        bes4. aes8 g4 f |
        es2\fermata r4 bes'4 |
        bes4. aes8 g4 f |
        es2\fermata r4 f4 |
        g4 aes g\fermata bes4 |
        c4 d es4\fermata es8 f |
        g4 f es\fermata bes |
        es4 bes c g |
        aes8 g f4 es2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        bes4 es g f |
        g4 f g f |
        f2 r4 f4 |
        bes4. aes8 g aes bes4 |
        bes4 c4 ~ c8 bes4 a8 |
        f2 r4 g |
        aes4 g es es |
        es4 d } %fin du repeat
      \alternative {
          { bes2 }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            bes4 f'4 | }
        }
        
        \set Timing.measureLength = #(ly:make-moment 4 4)
        g4. f8 bes, c d4 |
        c2 r4 d8 es |
        f4 f4 ~ f8 es4 d8 |
        bes2 r4 d4 | 
        es4. d8 es4 g4 ~ |
        g8 f4 g8 g4 g8 aes |
        bes4. aes8 g4 g8 aes |
        bes8 aes bes g aes4 es |
        es4 d bes2 |
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
	\repeat volta 2 {
        g4 bes es d |
        es4 bes bes a |
        d2 r4 d4 |
        es4 es bes es |
        f4 f f4 ~ f8 c |
        d2 r4 es4 |
        es4. des8 c4 c |
        c8 bes aes4 } %fin du repeat
        \alternative {
          { g2 }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            g4 bes4 | }
        }
        
        \set Timing.measureLength = #(ly:make-moment 4 4)
        es8 d c d es4 bes8 aes |
        g2 r4 bes4 |
        bes8 c d4 bes8 c4 bes8 |
        g2 r4 bes4 |
        bes4 c8 aes bes4 es |
        es4 d c es |
        es4 d es es |
        bes4 es es4. c8 |
        c8 bes aes4 g2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        es2 ~ es8 g bes aes |
        g8 f es d es c f4 |
        bes,2\fermata r4 bes'8 aes! |
        g8 aes g f es4 es' |
        d8 c bes a bes4 f |
        bes,2\fermata r4 es8 des |
        c8 d! es4 aes,8 bes c4 |
        f,4 bes } %fin du repeat
        \alternative {
          { es,2 }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            es4 d'4 | }
        }
        
        \set Timing.measureLength = #(ly:make-moment 4 4)
        es4 f g8 aes bes bes, |
        c2\fermata r4 g'4 |
        d8 c bes4 es8 c aes bes |
        es2\fermata r4 bes'8 aes |
        g4 f es\fermata es' |
        a,4 b c\fermata c |
        g8 aes bes4 c,4\fermata es8 f |
        g8 f g es aes, bes c4 |
        f,4 bes es,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "179." }
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

