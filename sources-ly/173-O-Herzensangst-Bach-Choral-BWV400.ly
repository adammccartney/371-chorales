
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 400" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "O Herzensangst, o Bangigkeit und Zagen" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        r4 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        \tempo 4 = 40 r2. |
	}

  upper = {
	\time 3/4
	\key es \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        bes4 g c |
        bes2\fermata es,4 |
        f2 g4 |
        aes2 bes4 |
        g4 es2\fermata |
        f4 g a |
        bes2\fermata d4 |
        c4 d es |
        d4 c2 |
        bes2.\fermata |
        bes4 b b |
        c2\fermata d4 |
        es4. es8 f4 |
        es4 d2 |
        c2\fermata bes4 |
        c4. d8 es4 |
        es2 d4 |
        es2.\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        es4 es es |
        d2 es4 |
        d8 c bes2 |
        f'2 f4 |
        es4 bes2 |
        d4 es es |
        d2 f4 |
        f4 f es |
        f4 g f8 es |
        d2. |
        f4 g g8 f |
        es2 g4 |
        g4 g f |
        g4 aes g8 f |
        es2 es4 |
        es4 f g4 ~ |
	g4 f8 es f aes |
        g2. |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key es \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g4 bes aes8 g |
        f2 bes4 |
        aes2 g4 |
        c4 bes bes |
        bes4 g2 |
        bes4 bes c |
        f,2 bes4 |
        c4 bes bes4 ~ |
	bes2 a4 |
        f2. |
        d'4 d g, |
        g2 d'4 |
        c4 c c |
        c4 ~ c b |
        g2 des'4 |
        c8 bes c4 bes |
        bes2 bes4 |
        bes2. |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        es4 es aes, |
        aes2\fermata g'4 |
        f8 es d4 es4 ~ |
	es4 d8 c d4 |
        es4 es,2\fermata |
        bes'4 es8 d c4 |
        bes2\fermata bes'4 |
        a4 aes g |
        f4 es f |
        bes,2.\fermata |
        bes'8 aes! g f es d |
        c2\fermata b4 |
        c4. bes!8 aes4 |
        g4 f g |
        c2\fermata g4 |
        aes2 g8 aes |
        bes2. |
        es,2.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "173." }
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

