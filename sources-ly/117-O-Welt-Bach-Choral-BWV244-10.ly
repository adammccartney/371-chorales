
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 244.10" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "O Welt, ich muß dich lassen" }
                     \line { \italic "old: Nun ruhen alle Wälder" }
                 } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r4 r4 \tempo 4 = 30 r4 
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
        c4 |
        aes4 bes c8 des es4 |
        des2 c4\fermata c8 des |
        es4 es bes c |
        aes2 g4\fermata es |
        aes4 bes c c |
        bes2.\fermata c4 |
        aes4 bes c8 des es4 |
        des2 c4\fermata c8 des |
        es4 es bes c |
        aes2 g4\fermata es |
        aes4 bes c des |
        c4 bes aes\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        aes4 |
        f4 g aes8 bes c4 |
        c4 bes aes aes |
        aes8 g aes f g f es4 |
        es4 d es bes |
        es4 des c8 des es4 |
        es2. g4 |
        f4 es es f |
        f8 es f g a4 aes |
        bes4 aes8 g f4 g |
        g4 f e es |
        es8 f es des c es f g |
        aes4 g es
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
        es4 |
        des4 des es8 des c bes |
        aes4 es' es f |
        es4 es es g, |
        aes8 g aes4 bes g8 f |
        es4 f8 g aes4 aes |
        g2. c4 |
        c8 des c bes aes bes c4 |
        bes8 c des es f4 f |
        es8 des c4 d g, |
        c2 c4 c |
        c8 des c bes aes4 aes |
        f'4 bes,8 c16 des c4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        aes4 |
        des8 c bes4 aes4. g8 |
        f4 g aes\fermata f |
        c8 bes c des es des c4 |
        f2 es4\fermata des! |
        c4 bes aes8 bes c des |
        es2.\fermata e4 |
        f4 g aes a |
        bes4 bes, f'\fermata f |
        g4 aes aes8 g f e |
        f8 g aes bes c4\fermata c, |
        f4 g aes8 g f es |
        des4 es aes,4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "117." }
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

