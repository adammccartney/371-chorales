
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 362" }
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
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        
	\time 3/4
        R2. |
        R2. |
        R2. |
        R2. |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2.         
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
	\repeat volta 2 {
        d4 |
        d4 bes c d |
        es4 d8 c c4\fermata c |
        c4 bes bes8 g8 a4 |
        bes2.\fermata c4 |
        c4 c c8 d16 es d8 c |
        bes2 bes4\fermata bes |
        a8 f bes es d c c4 |
        bes2.\fermata } %fin du repeat
\break
        a4 |
        a4 a a a |
        bes2 bes4\fermata bes |
        a4 a a a |
        bes2 bes4\fermata d |
\break
        d8 c bes4 c d |
        es2 d4\fermata d |
        c8 b c f es d d4 |
        
	\time 3/4
        c2 b4 |
        c2 c4 |
        d2 d4 |
        es2. |
        d2 d4 |
        c2 c4 |
        c4 es8 d c b |
        c2\fermata b4 |
        c2 c4 |
        d2 d4 |
        es2. |
        d2 d4 |
        c2 bes4 |
        bes4 d8 c bes a |
        bes2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        f4 |
        g8 fis g4 g8 a bes4 |
        bes8 a bes4 a g |
        fis4 d g4 f |
        f2. f8 e |
        f8 g a g a4. fis8 |
        d8 es! f!4 es g |
        f8 es d es f g f es |
        d2. } %fin du repeat
        c4 |
        f4 f fis8 g a8 fis |
        g8 es f4 es g |
        f4 es8 d c4 f |
        f4 es d f8 g |
        a4 d, g8 f f4 |
        es8 d c f f4 f |
        f8 d es f g aes g f |
        
	\time 3/4
        es2 f4 |
        g2 f8 es |
        d4 d'8 c bes aes |
        g8 f es g c bes |
        a!4 d, g |
        g4 f es8 f |
        g4 aes g |
        g2 g4 |
        g4 f2 ~ |
        f8 g aes4 g |
        g2 f4 |
        f2 g4 |
        g2 g4 |
        f4 g f |
        f2.
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
	\repeat volta 2 {
        bes4 |
        bes8 c d4 c f |
        es8 c f4 f c |
        d8 a bes4 c c |
        d2. a8 bes |
        c8 d es4 d a |
        bes4 aes g c |
        c4 bes bes a |
        f2. } %fin du repeat
        f8 a |
        c4 c d d8 c |
        bes4 aes g c |
        c4 c f c |
        bes8 aes g4 f bes |
        a4 bes8 a g a bes4 |
        bes4 a bes bes |
        c4 c c b |
        
	\time 3/4
        g2 d'4 |
        c4 bes aes |
        a!2 bes4 |
        b4 c2 ~ |
	c4 bes!4 bes |
        bes4 aes8 bes c d |
        es4 f d |
        es2 d4 |
        c4 f es |
        d8 es f4 es8 d |
        c4 bes! c |
        bes2 bes4 |
        c4 d es |
        d4 es c |
        d2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        bes8 a |
        g8 a g f es f es d |
        c4 d8 es f4\fermata es |
        d4 g8 f e4 f |
        bes,2.\fermata f'8 g |
        a8 bes c4 fis,4. d8 |
        g8 f es d es4\fermata e |
        f4 g f8 es! f4 |
        bes,2.\fermata } %fin du repeat
        f4 |
        f'8 g f es d e fis d |
        g8 f es d es4\fermata e |
        f4 c8 d es g f es |
        d8 bes es4 bes\fermata bes' |
        fis4 g8 f es f es d |
        c4 f bes,\fermata bes' |
        a4 aes g8 f g4 |
        
	\time 3/4
        c,2 d4 |
        es4 e f |
        f4 fis g |
        g4 aes g |
        fis4 g f |
        e4 f8 g aes!4 |
        g4 f g |
        c,2\fermata g'4 |
        aes4 a2 |
        bes4 b2 |
        c4 g a! |
        bes8 c bes a g f |
        es8 g f es d c |
        f4 es f |
        bes,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "252." }
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

