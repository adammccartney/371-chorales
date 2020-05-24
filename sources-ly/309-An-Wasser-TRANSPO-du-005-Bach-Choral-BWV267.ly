
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 267a" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "An Wasserflüssen Babylon" }
                                  \line { \italic "(old: Ein Lämmlein geht und trägt die Schuld) " }
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
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key aes \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        es4 |
        f4 es8 des c des es4 |
        des8 c des4 c\fermata bes |
        c4 des es des8 c |
        bes8 aes bes4 aes\fermata } %fin du repeat
        aes4 |
        bes4 c des8 c bes4 |
        c4 bes aes\fermata aes8 bes |
        c4 des es f |
        c4 d es\fermata c8 des |
        es4 f es8 des c4 |
        des2 c4\fermata f |
        f4 f bes, es |
        des4 c bes\fermata des |
        c4 bes aes bes8 aes |
        ges4 f es\fermata es |
        aes4 bes c4. des8 |
        es4 des8 c bes4 c8 des |
        bes2 aes4\fermata 
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        aes4 |
        aes4 g aes g |
        f8 aes8 aes g aes4 bes |
        aes4 aes aes aes |
        aes4 g es } %fin du repeat
        es4 |
        es8 f g4 f f8 es |
        es4 des c f |
        es4 f ges f8 g |
        aes8 g aes bes g4 es |
        aes4 aes bes c |
        c8 a bes4 a c |
        bes4 f8 des es f ges4 |
        f4 es des bes' |
        es,8 f ges4 f8 es f4 |
	f8 es es d es4 es8 des |
        c8 bes aes g aes4 aes' |
        g4 aes aes2 |
	aes4 g4 es 
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key aes \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        c4 |
        des8 c bes4 f' bes,8 c |
        des8 f es4 es es |
        es4 aes,8 bes c aes f'4 |
        bes,8 c des4 c } %fin du repeat
        c4 |
        bes4 es aes, bes |
	bes8 aes aes g aes4 aes |
        aes4 aes aes aes |
        aes8 bes16 c bes4 bes aes |
        aes8 es' des c bes4 f' |
        f2 f4 f8 es |
        des8 c bes4 ~ bes8 a bes c |
        a8 bes4 a8 bes4 f8 g |
        aes4 es'8 des ces4 bes |
        bes4 aes g! g |
        aes4 es' es f |
        es2 f8 es des4 |
        es8 f es des c4 
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        aes4 |
        des,4 es f g8 aes |
        bes4 es, aes\fermata g |
        aes8 g f4 c des |
        es2 aes,4\fermata } %fin du repeat
        aes'4 |
        g4 f8 es f4 g |
        aes4 es aes, des |
        aes'8 ges f es des c des es |
        f4 bes, es\fermata aes8 bes |
        c4 des g, a |
        bes4 bes, f'\fermata a, |
        bes8 c des bes ges'4 f8 es |
        f4 f, bes\fermata bes |
        c8 d es2 d!4 |
        es4 bes es\fermata c |
        f4 es aes8 g f4 |
        c8 bes aes4 des8 c bes4 |
        es8 des es4 aes,\fermata 
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "309." }
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

