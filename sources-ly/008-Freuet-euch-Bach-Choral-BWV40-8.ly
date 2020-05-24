
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 40.8" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Freuet euch, ihr Christen" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        r2 r4 \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r4 r2 \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r4 r4 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r4 r4 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r4 r2 \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 r4 \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        R1 |
        R1 |
        r4 r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
        \key f \dorian % es major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        c4 c bes aes |
        g4. f8 f4 f\fermata |
        aes4. bes8 c4 c |
        bes4. aes8 aes2\fermata |
        aes4 bes bes aes |
        g4. f8 f2\fermata |
        c'4 c des des |
        bes4 bes c c\fermata |
        aes4 aes des des |
        c4 c bes2\fermata |
        g4 aes! bes aes |
        g4 g f2\fermata |
        f'4 f es es |
        d4 d c c\fermata |
        c4 c des c |
        bes4. aes8 aes4 aes\fermata |
        aes4 aes des des |
        bes4 bes es es |
        c4 c f f |
        e4 e f f\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        f4 f f8 e8 f4 |
        f8 g e4 f c |
        f4. g8 aes4 aes |
        aes8 f g4 es2 |
        f4 g e f |
        f4 e c2 |
        f4 f f f |
        g8 aes bes g aes4 aes |
        f4 f bes bes |
        bes4 a f2 |
        e4 f f8 e! f4 |
        f4 e c2 |
        aes'4 aes g g |
        g8 aes g f e4 e |
        f4 f f8 g aes4 |
        aes8 f g4 es es |
        f4 f bes bes |
        g4 g c c |
        aes8 g aes bes c4 bes8 aes |
        g4 g a a |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key f \dorian % es major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        aes4 a bes c |
        des4 c8 bes aes4 aes |
        c4. bes8 es4 es |
        f4 es8 des c2 |
        des4 des g, f8 aes |
        des4 c8 bes aes2 |
        a8 bes c a bes4 bes |
        bes4 es es es |
        des4 des f f |
        ges4 f8 es des2 |
        c4 c bes c |
        des4 c8 bes aes2 |
        c4 c c c |
        c4 b c g |
        a4 a bes es, |
        es'4. des8 c4 c |
        des4 des f f |
        es4 es g g |
        f4 f c f, |
        c'4 c c c |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        f4 es des c |
        bes4 c f, f\fermata |
        f'4 es8 des c bes aes4 |
        des4 es aes,2\fermata |
        des4 c8 bes c4 des! |
        bes4 c f,2\fermata |
        f'8 g a f bes, c des bes |
        es8 f g es aes4 aes\fermata |
        des,8 es f des bes c des bes |
        es8 c f4 bes,2\fermata |
        bes'4 aes g f |
        bes,4 c f,2\fermata |
        f8 g aes bes c d es f |
        g4 g, c c\fermata |
        f8 es des c bes4 c8 des |
        es4 es aes, aes\fermata |
        des8 es des c bes c des bes |
        es8 f es des c des es c |
        f8 e f g aes g aes bes |
        c4 c, f f\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "8." }
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

