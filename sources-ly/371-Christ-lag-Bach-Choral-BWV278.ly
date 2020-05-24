
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 278" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Christ lag in Todesbanden" }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 72 r4 |
        R1 |
        r2 } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            \tempo 4 = 30 r4 \tempo 4 = 72  }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            \tempo 4 = 34 r2 \tempo 4 = 72 \bar "||" }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 72 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 72 r4 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 72 |
        R1 |
        \tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
	\key e \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        b4 |
        ais4 b8 cis d4 e |
        d4 cis b\fermata b8 a |
\break
        g4 a b8 a g4 |
        fis8 e fis4 } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            e4\fermata  }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            e2\fermata \bar "||" }
        }
\break
        \set Timing.measureLength = #(ly:make-moment 4 4)
        e8 fis g4 a e8 fis |
        g4 a b\fermata b |
        e4 d! e fis8 e |
\break
        d4 cis b\fermata cis! |
        d8 c! b c d4 a |
        g4 fis e2\fermata |
        b'4 a g fis |
        e2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 |
        fis4. ais!8 b ais16 b cis!4 ~ |
	cis8 b4 ais8 fis4 fis ~ |
	fis8 e4 dis16 cis b8 dis e4 |
        e8 dis16 cis dis4 } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            b4  }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            b2 \bar "||" }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        b4 e e4. b8 |
        b8 c16 d e4 dis fis |
        b4 a b8 gis cis4 ~ |
        cis8 b4 ais8 fis4 g |
        fis4 d d2 |
        e4. d8 cis2 |
        dis8 e e fis b, e4 dis!8 |
        b2.
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key e \minor
	\clef bass
	\partial 4
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e8 d |
        cis4 d8 e fis g4 fis8 |
        fis8 b, cis16 d e8 e dis\fermata b4 |
        b8 c!4 b16 a b4 b |
        b4. a8 } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            g4 }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            g2 \bar "||" }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        g8 a b4 e, a |
        g8 a16 b c4 fis, dis' |
        e8 fis16 g a8 fis b, e cis b16 ais |
        b8 d g fis d4 e |
        a,4 b8 a g4. fis8 |
        b4 a a2 |
        b4 cis8 dis e g, c b16 a |
        gis2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        e4 |
        e4 d8 cis b b'4 ais8 |
        b8 g e fis b,4 dis |
        e4 fis g8 fis g a |
        b4 b, } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            e4\fermata  }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            e2\fermata \bar "||" }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        e4. d8 c b cis dis |
        e8 d c4 b\fermata b'8 a |
        g8 fis16 e fis8 a gis cis ais fis |
        b8 g e fis b,4\fermata e |
        d4 g,8 a b c d4 ~ |
	d8 cis8 d fis a2\fermata |
        a8 g4 fis8 e c! a b |
        e2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "371." }
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
      tempoWholesPerMinute = #(ly:make-moment 72 4)
		}
	    }
	}

