
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 77.6 " }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Ach Gott, vom Himmel sieh' darein" }
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
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 } %fin du repeat
        \alternative {
          { r4 |
            r2  }
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            r4 | }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
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
        a4 |
        bes4 a 
        \repeat volta 2 {
        g4 d' |
        d8 c bes4 a2\fermata |
        r4 c bes a |
        g4 a8 bes16 c bes4 a |
        g2.\fermata } %fin du repeat
        \alternative {
          { a4 |
            bes4 a  }
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            g4 | }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        a4 f e! d8 e |
        f4 g a2\fermata |
        r4 a g bes |
        a4 bes g fis! |
        g2.\fermata g4 |
        d'4 bes c d |
        c4 bes a\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 |
        fis8 g4 fis8 
        \repeat volta 2 {
        g8 a bes4 |
        a4. g8 fis2 |
        r4 fis g f |
        es!8 f g4 g fis |
        d2. } %fin du repeat
        \alternative {
          { fis4 |
            g4 fis  }
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            d4 | }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        e!4 d cis d |
        c!4 d8 e! f2 |
        r4 f f8 es! d g ~ |
	g8 fis8 g4 g8 c, d4 |
        d2. d4 |
        d4 g f f8 g |
        a4 g d
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
        cis4 |
        d4 d 
        \repeat volta 2 {
        d d |
        d4 d d2 |
        r4 d d d8 c |
        bes4 es d4. c8 |
        bes2. } %fin du repeat
        \alternative {
          { d4 |
            d4 d  }
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            bes4 | }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        a4 a a8 g f g |
        a4 bes c2 |
        r4 c c bes8. c16 |
        d4 d8 c bes a16 g a4 |
        bes2. bes4 |
        a4 d c bes |
        es4 e fis
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 |
        d,4 d'8 c!
        \repeat volta 2 {
        bes4 a8 g |
        fis4 g d2\fermata |
        r4 a bes8 c d4 |
        es!4 d8 c d2 |
        g,2.\fermata } %fin du repeat
        \alternative {
          { d'4 |
            g4 d'8 c  }
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            g4 | }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        cis,4 d a bes |
        a4 g f2\fermata |
        r4 f c' g |
        d'4 bes es! d |
        g,2.\fermata g'4 |
        fis4 g a bes |
        c4 cis d\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "253." }
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

