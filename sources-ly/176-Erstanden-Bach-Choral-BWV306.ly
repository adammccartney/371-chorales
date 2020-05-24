
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 306" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Erstanden ist der heilig Christ" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 
	}

  upper = {
	\time 3/4
	\key f \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        f4 |
        f4. g8 a bes |
        c2 g4 |
        a2 b4 |
        c2\fermata bes!4 |
\break
        a4. g8 a bes |
        c2 bes4 |
        a2 g4 |
        a2\fermata a4 |
\break
        c2 bes4 |
        a2 g4 |
        f2 e4 |
        f2\fermata f4 |
\break
        g8 f g a bes4 |
        a2 g4 |
        f2 e4 |
        f2\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        c4 |
        c4 d8 e f4 ~ |
	f4 e8 f g4 ~ |
	g8 e8 f2 ~ |
	f4 e4 g4 ~ |
	g4 f2 |
        g8 f g a8 ~ a8 g8 ~ |
	g8 f16 e f4 ~ f8 e16 d |
        cis2 d4 |
        e4. f8 g4 ~ |
	g4 f4 e4 ~ |
	e4 d4 c8 bes |
        a2 d4 |
        d4 e8 f d e |
        f2 e4 ~ |
	e4 d4 c |
        c2
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key f \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 |
        a8 bes a g f4 |
        g2 c4 |
        c2 d4 |
        g,2 c4 |
        c8 a d2 |
        c8 d e4 d |
        d4 a d, |
        e2 f4 |
        a4 c2 ~ |
        c8 a d c bes4 |
        a8 f bes a g4 |
        f2 a4 |
        g4 c d8 g, |
        a8 bes c4 ~ c8 bes |
        a4 bes8 a g bes |
        a2
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c, {
        f4 |
        f'4. e8 d4 |
        c4. d8 e c |
        f4. e8 d4 |
        c2\fermata e4 |
        f4. e8 d4 |
        e4. fis8 g4 |
        d4. c8 bes4 |
        a2\fermata d4 |
        a'8 a, a' g f e |
        f8 f, f' e d cis |
        d4 bes c! |
        d2\fermata d8 c |
        bes4. a8 g4 |
        f8 g a bes c4 |
        d8 c bes4 c |
        f,2\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "176." }
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

