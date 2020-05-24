
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 299" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Dir, dir, Jehova, will ich singen" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        r4 |
        R2. |
        R2. |
        R2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 } %fin du repeat
        r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        r4 \grace { r8 } r2 |
        \tempo 4 = 34 r2 
	}

  upper = {
	\time 3/4
	\key bes \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        f4 |
        bes4 d8 c d bes |
        g'4 es2\trill |
        f4 bes, es |
        c2\trill bes4\fermata |
        c4 es d |
        c4 d8 c d bes |
        a8 bes bes4. c8 |
        c2\fermata } %fin du repeat
\break
        a4 |
        bes4 c d |
        g,4 g'8 es c b |
        c8 d d4. es8 |
        es2\fermata c4 |
        a!4 bes8 a g f |
        f'4. bes,8 g'4 ~ |
        g8 f8 \grace { es8_( } d4) c8 bes |
        bes2\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 |
        f4 bes8 a bes4 |
        bes4 g2 |
        f4 g8 a bes4 |
        bes4 a f |
        f4 f4. g8 |
        a4 bes8 a bes4 |
        es,4 f8 es f e |
        f2 } %fin du repeat
        f4 |
        f2 f4 |
        es4. g8\noBeam es8 d |
        es4 aes g |
        g2 g4 |
        f4 g a |
        bes4. bes8 bes4 ~ |
	bes4 bes4 a |
        f2
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
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
        bes4 f'8 es f4 |
        es4 bes8 a bes c |
        d2 g4 |
        f4. es8 d4 |
        c8 bes c a bes4 |
        c4 f, f |
        c'4 bes f8 g |
        a2 } %fin du repeat
        c4 |
        f,4 a bes |
        bes4. bes8 c4 ~ |
	c8 c8 c4 b |
        c2 c4 |
        c2 c4 |
        d4. d8 es4 |
        bes4 f' es8 d |
        d2
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        bes4 |
        d,4 c bes |
        es4 g8 f g es |
        bes'8 a g4 es |
        f2 bes,4\fermata |
        a'8 g a f bes4 |
        f4 es d |
        c4 d8 c d bes |
        f2\fermata } %fin du repeat
        f'8 es |
        d4 es8 d c bes |
        es4. es8 aes4 ~ |
	aes8 g8 f4 g |
        c,2\fermata es4 |
        f2 es4 |
        d4 g8 f es d |
        es4 f f, |
        bes2\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "209." }
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

