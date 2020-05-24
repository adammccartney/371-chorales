
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 41.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Jesu, nun sei gepreiset" }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 
        \bar "||"
        \time 3/4  
        \set Timing.measureLength = #(ly:make-moment 1 4)
        r4 |
	\set Timing.measureLength = #(ly:make-moment 3 4)
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
	\tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        r2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
	\tempo 4 = 34 r2 \tempo 4 = 78
        \bar "||"
        \time 4/4
        \set Timing.measureLength = #(ly:make-moment 1 4)
        r4 |
	\set Timing.measureLength = #(ly:make-moment 4 4)
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
	\key c \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        e4 |
        e4 c d e |
        f2 d4\fermata d |
        d4 c c b |
        c2\fermata r4 d4 |
        d4 d d e |
        c2 c4\fermata c |
        b4 c d d |
        c2.\fermata } %fin du repeat
\break
        b4 |
        b4 b b b |
        c2 c4\fermata b |
        b4 b b b |
        c2 c4\fermata 
        \bar "||"
\break
        \time 3/4  
        \set Timing.measureLength = #(ly:make-moment 1 4)
        e4 |
	\set Timing.measureLength = #(ly:make-moment 3 4)
        e4 d c |
        d2 e4 |
        f2. |
        e2\fermata e4 |
        d2 d4 |
        cis2 cis4 |
        d2. ~ |
	d2\fermata e4 |
        e4 d c |
        d2 e4 |
        f2. |
        e2\fermata e4 |
        d2 d4 |
        cis2 cis4 |
        d2. ~ |
	d2\fermata
        \bar "||"
\break
        \time 4/4
        \set Timing.measureLength = #(ly:make-moment 1 4)
        e4 |
	\set Timing.measureLength = #(ly:make-moment 4 4)
        e4 c d e |
        f2 d4\fermata d |
        d4 c c b |
        c2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 |
        g4 g g g |
        f8 g a4 bes a |
        g4 g a g |
        g2 r4 g8 fis |
        g4. fis8 g4 g |
        g4 f!8 e f4 g |
        g8 f e4 a g8 f |
        e2. } %fin du repeat
        g4 |
        g4 a g gis |
        a2 a4 a |
        a4 g d g |
        g2 g4
        \bar "||"
        
        \time 3/4
        \set Timing.measureLength = #(ly:make-moment 1 4)
        g4 |
	\set Timing.measureLength = #(ly:make-moment 3 4)
        g2 g4 |
        g4 a b |
        c4 b a |
        g2 c4 |
        b4 a g |
        a4 bes g |
        f2 bes4 |
        a2 a4 |
        b2 a4 |
        a2 g4 |
        a2 g4 |
        g2 g4 |
        f4 g a |
        g4 a bes |
        a4 bes g |
        fis2 
        \bar "||"
        
        \time 4/4
        \set Timing.measureLength = #(ly:make-moment 1 4)
        a4 |
	\set Timing.measureLength = #(ly:make-moment 4 4)
        g4 g g g |
        a2 g4 g |
        g4 g g8 a g f |
        e2. 
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key c \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        c4 |
        c8 d e4 d c |
        c4 f f a, |
        b4 c f8 e d4 |
        e2 r4 b8 a |
        b8 a b c d4 c8 bes |
        bes4 a8 g a4 e' |
        d4 c4 ~ c b4 |
        g2. } %fin du repeat
        d'4 |
        d8 e fis4 e e |
        e2 e4 f |
        f4 e8 f g4 f ~ |
	f4 e8 d e4
        \bar "||"
        
        \time 3/4
        \set Timing.measureLength = #(ly:make-moment 1 4)
        c4 |
	\set Timing.measureLength = #(ly:make-moment 3 4)
        c4 d e |
        d2 g4 |
        c,2 d4 |
        e2 g4 |
        g4 f e |
        f4 e2 |
        d2 e4 |
        f2 c4 |
        b4 e2 |
        a,4 b c4 ~ |
	c4 b8 a b4 |
        c2 a4 |
        a2 d4 |
        e2 e4 |
        a,4 d bes |
        a2
        \bar "||"
        
        \time 4/4
        \set Timing.measureLength = #(ly:make-moment 1 4)
        c4 |
	\set Timing.measureLength = #(ly:make-moment 4 4)
        c4 c b c |
        c8 e d c b4 b |
        b4 c8 d e4 d8 g, |
        g2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        c4 |
        c4 c' b bes |
        a4 g8 f bes4\fermata fis |
        g8 f! e4 f g |
        c,2\fermata r4 g4 |
        g'8 fis g a b g c4 |
        f,2 f4\fermata e8 f |
        g4 a8 g f4 g8 g, |
        c2.\fermata } %fin du repeat
        g4 |
        g'8 fis e dis e d! c b |
        a2 a4\fermata d |
        e8 f g a g f e d |
        c2 c4\fermata
        \bar "||"
        
        \time 3/4
        \set Timing.measureLength = #(ly:make-moment 1 4)
        c4 |
	\set Timing.measureLength = #(ly:make-moment 3 4)
        c'4 b a |
        b4 a g |
        a2 b4 |
        c2\fermata c,4 |
        g'4 a bes |
        a4 g a |
        bes4 a g |
        d2\fermata a'4 |
        gis2 a4 |
        f2 e4 |
        d2 g4 |
        c,2\fermata cis4 |
        d4 e f |
        e4 f g |
        fis4 g g, |
        d'2\fermata
        \bar "||"
        
        \time 4/4
        \set Timing.measureLength = #(ly:make-moment 1 4)
        a8 b |
	\set Timing.measureLength = #(ly:make-moment 4 4)
        c8 d e c f g f e |
        d8 e f d g_\markup { \tiny "^ fermata ?" } a8 g f |
        e8 d e f g f g g, |
        c2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "11." }
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

