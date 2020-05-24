
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 245.40" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Herzlich lieb hab ich dich, o Herr" }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 40 r2. 
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
	\relative c'' {
	\repeat volta 2 {
        es4 |
        d4 c bes aes8 g |
        c4 c bes\fermata es |
        d4 c bes aes8 g |
        c4 c bes\fermata bes |
        c4 d es8 f g4 |
        f4 es2 d4 |
        es2.\fermata } %fin du repeat
\break
        es4 |
        es4 f es8 d c d |
        es4 es d\fermata d4 |
        es4 f es8 d c d |
\break
        es8 g f4 d4\fermata g |
        g4 g f es |
        es4 d es\fermata d4 |
        es4 d c bes |
\break
        bes4 a bes\fermata g'4 |
        f4 es d\fermata g4 |
        aes8 g f4 g es |
        es4 d es\fermata es |
        es4 es f es |
        es2. d4 |
        es2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        bes4 |
        bes4 g g f8 es |
        es4 aes g g |
        g8 f es f g8 f es d |
        es8 f f4 g g |
        aes8 c bes aes g f es4 |
        f2 g4 aes |
        g2. } %fin du repeat
        g4 |
        aes4 aes g4. g8 |
        f8 g a4 bes bes |
        bes4 aes! g aes |
        bes4 c bes bes |
        bes4 c c aes |
        g4 f g aes |
        g4 f8 bes g4 g |
        g4 f f es |
        f8 g16 aes! g8 a b4 c4 |
        c4 b8 c g4 g |
        ges8 f f4 g g |
        aes4 aes aes g |
        f2 f2 |
        g2.
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
	\relative c'' {
	\repeat volta 2 {
        g4 |
        f4 es d des |
        c8 bes c d! es4 g,8 aes |
        bes4 c8 d es4 aes,8 bes |
        c8 es d c d4 es |
        es8 aes g f es8 bes des4 |
        c2 bes |
        bes2. } %fin du repeat
        bes4 |
        c4 c c8 d es d |
        c4 f f f |
        bes,4 bes bes f' |
        es8 d c4 f es |
        es4 es f f |
        bes,4 bes bes f' |
        bes,8 c d4 es d |
        es8 d c4 d bes8 c |
        d4 es8 c g'4 c, |
        f8 es d c d4 c |
        c4 bes bes des |
        c8 d! es4 bes bes |
        c2 bes |
        bes2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        es4 |
        bes'4 c g bes |
        aes4 aes, es'\fermata c4 |
        g'4 aes es8 d c bes |
        aes4 aes' g\fermata es |
        aes4 bes4 c8 d, es4 |
        aes,4 a bes2 |
        es2.\fermata } %fin du repeat
        es4 |
        aes8 g f4 c c'8 bes |
        a8 g f4 bes\fermata bes8 aes |
        g8 f es d es4 f |
        g4 a bes\fermata es,4 |
        es'8 d c bes aes! bes c aes |
        bes4 bes, es\fermata f |
        g8 a bes g es8 f g es |
        c4 f bes,\fermata es |
        bes'4 c g\fermata e |
        f8 g aes4 b, c |
        a'4 bes es,\fermata es |
        aes8 bes c4 d,! es |
        a,2 bes |
        es,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "107." }
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

