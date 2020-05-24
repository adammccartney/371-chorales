
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 402" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Es sind doch selig alle, die im rechten Glauben wandeln" }
                     \line { \italic "old: O Mensch, bewein' dein' Sünde groß" }
                 } }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key es \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        es4 |
        es4 f g8 f es4 |
        g4 a bes\fermata bes |
        aes!4 g f es8 f |
        g4 a bes\fermata c |
        bes4 aes! g aes |
        f2 es4\fermata } %fin du repeat
\break
        es'4 |
        es4 es d bes |
        c4 c g\fermata es' |
        es4 es d bes |
        c4 c bes\fermata g8 aes |
        bes4 c bes g |
        aes2 g4\fermata f |
        g4 aes bes bes |
        aes4 g f\fermata bes |
        c4 d es d |
        c4 c bes\fermata es, |
        f4 g aes g |
        f2 es4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        bes4 |
        c4 ~ c8 b16 c d4 ~ d8 c16 d |
        es4 ~ es8 d8 d4 g4 ~ |
	g8 f ~ f es ~ es d8 c d |
        es8 d es4 d f ~ |
	f8 es16 d es8 bes8 ~ bes es16 d es4 ~ |
	es8 d16 c d4 bes } %fin du repeat
        bes'8 aes |
        g4 f f es |
        es8 des es4 es g |
        f4 f f f |
        g4 f8 es d4 es8 f |
        g4 aes g g ~ |
	g8 f16 es f8 d es4 f |
        es4 es f g |
        c,8 d es4 ~ es8 d8\fermata f4 |
        f4 f g8 a bes4 ~ |
	bes4 a4 g es |
        d4 es f8 d bes es ~ |
	es8 d16 c d4 bes
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key es \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        g4 |
        aes4 aes g g |
        c8 bes a4 g d' |
        es8 bes bes4 c8 g g4 |
        c8 bes c4 bes aes! ~ |
	aes8 g4 f8 es4 ~ es8 bes' |
        c8 aes f bes g4 } %fin du repeat
        g8 aes |
        bes4 c4 ~ c8 bes16 aes! g4 |
        aes4 aes bes c |
        c8 bes a4 bes8 a bes4 ~ |
	bes8 a16 g a4 bes bes |
        es4 es es8 des ~ des c |
        c4 d8 f c4 aes |
        bes4 c d! d,8 e |
        f4 bes bes d |
        c4 bes4 ~ bes8 c d4 |
        g,4 d' d c |
        bes4 bes4 ~ bes8 f g bes |
        c8 aes f bes16 aes g4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        es4 |
        aes8 g f4 b, c ~ |
	c4 fis,4 g\fermata g' |
        c,8 d es4 a,8 b c4 ~ |
	c4 f,4 bes\fermata f'8 es |
        d8 bes c d es d c bes |
        aes8 f bes4 es,\fermata } %fin du repeat
        es8 f |
        g4 a bes8 c des4 |
        c8 bes aes4 es'\fermata c8 bes |
        a8 g f4 bes8 c d4 |
        c4 f bes,\fermata es4 ~ |
	es8 des8 c d es4 e |
        f4 b, c\fermata des ~ |
	des4 c4 bes8 aes g4 |
        f4 g8 aes bes4\fermata bes' |
        a4 aes g4. f8 |
        e4 fis g\fermata aes! ~ |
	aes8 g8 f es d bes es g, |
        aes4 bes es,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "201." }
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

