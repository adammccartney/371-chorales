
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 176.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line {"Es woll uns Gott genädig sein (1)"}
                     \line { \italic "old: Christ, unser Herr, zum Jordan kam"}
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key c \dorian % bes \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        f8 g |
        aes4 bes c bes |
        es4 d8 c c4\fermata bes |
        es4 d c bes |
\break
        aes4 g f\fermata f8 g |
        aes4 bes c bes |
        es4 d8 c c4\fermata bes |
        es4 d c bes |
\break
        aes4 g f\fermata f |
        bes4 bes g c |
        c4 b c\fermata c |
        f4 f g8 f es4 |
        f8 es d4 c\fermata d |
        es4 d c bes |
        c8 bes aes4 g\fermata f8 g |
        aes4 bes c8 bes aes!4 |
        bes8 aes g4 f\fermata f' |
        f4 f g f |
        es4 d c\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 |
        c8 d es4 es8 f g4 |
        g4 g g g |
        g4 g aes8 g f4 |
        c8 f4 e8 c4 c |
        f4 g aes! g |
        c4 b g g |
        g8 c c bes bes aes g e |
        f4 e c c |
        f4 es8 d es f g4 |
        g4 g g g |
        c4 bes bes c8 bes |
        aes4 d,8 es16 f es4 g |
        g4 f es8 f g4 |
        c,4 f e c |
        f4 g g8 e f4 |
        g8 f e4 c c' |
        bes4 bes bes c8 f, |
        g4. f8 e4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key c \dorian % bes \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        bes4 |
        aes4 g aes es'8 d |
        c4 b es d |
        c4 d8 e f4 f,8 g |
        aes8 bes c4 aes aes8 g |
        f8 aes des4 es es8 f |
        g4 g es d |
        c4 f,8 g aes4 bes |
        c4 bes8 aes aes4 aes8 g |
        f4 bes bes es |
        d8 c d4 es es |
        es4 d es8 d c4 |
        d8 c b4 g b! |
        c8 bes! aes bes c d e f |
        g4 c, c aes8 g |
        f8 aes des4 c des |
        des4 g,8 aes16 bes aes4 f |
        d'!8 es f d es d c4 |
        c4 b g
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        bes4 |
        f'4 es aes! g8 f |
        es8 f g4 c,\fermata g' |
        c4 bes! aes d,8 e |
        f4 c f,\fermata f'8 es! |
        des8 c bes4 aes es'8 d |
        c4 g' c\fermata g |
        c,4 d8 e f4 des |
        c8 bes c4 f,\fermata f'8 es! |
        d!8 c bes4 es d8 c |
        g'4 g, c\fermata c'8 bes |
        a!4 bes es, aes8 g |
        f4 g c,\fermata g' |
        c,4 f8 g aes!4 g8 f |
        e4 f c\fermata f8 es |
        des8 c bes4 aes des8 c |
        bes4 c f,\fermata a' |
        bes8 c d bes es,4 aes |
        g8 f g4 c,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "119." }
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

