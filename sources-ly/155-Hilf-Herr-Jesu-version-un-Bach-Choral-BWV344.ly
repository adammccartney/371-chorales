
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 344" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Hilf, Herr Jesu, laß gelingen (1)" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R2. |
        R2. |
        R2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        r2 \tempo 4 = 30 r4 |
	}

  upper = {
	\time 3/4
	\key g \dorian % f \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g2 g4 |
        d'2 d4 |
        c2 bes4 |
        a2 a4\fermata |
        d2 f4 |
        es2 d4 |
        c2 c4 |
        bes2.\fermata |
        a2 bes4 |
        c2 c4 |
        bes2 c4 |
        a2 a4\fermata |
        d2 d4 |
        c2 bes4 |
        a2 a4 |
        g2.\fermata |
        bes2 bes4 |
        bes2 bes4 |
        es2 d4 |
        c2 c4\fermata |
        c2 d4 |
        bes2 c4 |
        a2 a4 |
        g2 g4\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d2 d4 |
        d8 e fis4 g |
        a2 a8 g |
        g4 fis8 e fis4 |
        f!2 c'4 |
        bes4 c4 ~ c8 bes |
        bes2 a4 |
        f2. |
        fis2 g4 ~ |
	g4 fis8 g a4 ~ |
	a4 g8 fis g4 ~ |
	g4 fis8 e fis4 |
        fis8 g a4 g4 ~ |
	g4 fis4 g |
        g2 fis4 |
        d2. |
        g2 g4 |
        g2 bes4 |
        bes4 a bes4 ~ |
	bes4 a8 g a4 |
        a2 a4 |
        g2 g4 |
        g2 fis4 |
        d2 d4 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key g \dorian % f \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        bes2 bes4 |
        a4 d8 c bes4 |
        es4 d d |
        d2 d4 |
        f!2 f4 |
        g4 f f |
        g4 f4. es8 |
        d2. |
        d2 d4 |
        es2 ~ es8 d |
        d2 es4 |
        d2 d4 |
        a4 d8 c bes4 |
        c4 d d |
        es8 d c es d c |
        bes2. |
        d2 d4 |
        es2 f4 |
        es4 c f |
        f2 f4 |
        f2 fis4 |
        d2 c8 d |
        es8 d c es d c |
        b2 b4 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {

        g8 a bes4 g |
        fis8 e d4 g4 ~ |
	g4 fis4 g |
        d2 d4\fermata |
        bes4 bes' a |
        g4 a bes |
        es,4 f f, |
        bes2.\fermata |
        d4 c bes |
        a4 g fis |
        g4 g' c, |
        d2 d4\fermata |
        d8 e fis4 g |
        a4 d, g |
        c,4 a d |
        g,2.\fermata |
        g4 g' f |
        es,4 es' d |
        c,4 c' bes |
        f2 f'4\fermata |
        f4 es d |
        g4 f es8 d |
        c4 a d |
        g,2 g4\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "155." }
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

