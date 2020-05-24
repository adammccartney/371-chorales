
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 403" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "O Mensch, schau Jesum Christum an" }
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
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        \tempo 4 = 40 r2. |
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
        g4 g g |
        g2 es4 |
        d2 d4 |
        a'2\fermata bes4 |
        a2 g4 |
        f2 e4 |
        d2\fermata d4 |
        g2 g4 |
        fis2 fis4 |
        g2 g4 |
        a2\fermata a4 |
        a2 a4 |
        bes2 bes4 |
        a2.\fermata |
        d2 c4 |
        bes2 a4 |
        g4 a b |
        c2\fermata a4 |
        bes2 a4 |
        g2 fis4 |
        g2.\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d8 c d4 b |
        c4 b c8 a |
        d8 c d4 d |
        d2 d4 |
        cis4 d e |
	e8 cis8 d4. cis8 |
        a2 a4 |
        d2 d4 |
        d4 es d |
        d4 c8 bes c4 |
        fis,2 fis'4 |
        fis2 fis4 |
        g2 g4 |
        g4 fis8 e fis4\fermata |
        fis8 g a2 ~ |
	a4 g4 d |
        g4 f2 |
        g2 fis4 |
        g4 f! es |
        es4. es8 d4 |
        d2. |
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
        bes8 a g4. f8 |
        es8 f g4 fis |
        g8 a bes4 bes |
        a2 g4 |
        a2 a4 |
        a4 bes8 a g a |
        fis2 fis4 |
        g8 a bes2 |
        a8 bes c4 a |
        g4. bes8 a g |
        d'2 d4 |
        d2 d4 |
        d2 d4 |
        d2. |
        a4 d2 |
        d2 d4 ~ |
	d4 c4 d |
        es2 d4 |
        d2 c4 |
        c8 bes a4. c8 |
        b2. |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        g8 a bes4 g |
        c8 d es!4 c |
        bes8 a g4 g' |
        fis2\fermata g4 ~ |
	g4 f!8 e d cis |
        d4 g, a |
        d,2\fermata d'8 c! |
        bes4 g8 a bes c |
        d4 a8 bes c a |
        bes4 es8 d es!4 |
        d2\fermata d,4 |
        d'8 es d c bes a |
        g8 fis g a bes c |
        d2.\fermata |
        d8 e fis e fis d |
        g8 fis g a g f |
        es8 d es f es d |
        c2\fermata d4 |
        g8 g, a bes c d |
        es8 d c4 d |
        g,2.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "203." }
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

