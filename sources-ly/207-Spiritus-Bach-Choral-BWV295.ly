
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 295" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Spiritus sancti gratia" }
                     \line { \italic "old: Des heil'gen Geistes reiche Gnad'" }
                 } }
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
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. |
	}

  upper = {
	\time 3/4
	\key d \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 d d |
        a'2 a4 |
        bes2 bes4 |
        a2.\fermata |
\break
        f4 g a |
        bes2. |
        a4 g4. f8 |
        f2\fermata g4 |
\break
        a2 g4 |
        g2 a4 |
        f2 f4 |
        e2.\fermata |
\break
        d4 e f |
        g2. |
        f4 e4. d8 |
        d2.\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 a d |
        e4 d a' |
	a4 g8 fis g4 ~ |
	g4 f!2\fermata |
        f4 ~ f8 e es d |
        d4 e!8 f g4 ~ |
	g8 f8 f4 e |
        c2 e4 |
        f2 e8 d |
        cis8 d e4 e4 ~ |
	e4 d8 cis d4 |
        d4 cis2^\fermata |
        d4 a d |
        e4. d8 e4 ~ |
	e8 d8 d4 cis |
        a2. |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key d \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        f8 g a g a4 ~ |
	a8 g8 f e d4 |
        d'2 d4 |
        d2. |
        a8 d ~ d8 c c4 |
        bes8 a g4 c |
        c4 d c8. bes!16 |
        a2 c4 |
        c2 c8 bes |
        bes4 a8 b cis4 |
        a4 a b |
        e,4 a2_\fermata |
        a4 a a |
        bes!4 a a |
        a4 bes! a8. g16 |
        fis2. |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        d8 e f e f d |
        cis4 d fis, |
        g8 a bes4 g |
        d'2.\fermata |
        d4 e fis |
        g4 c,8 d e4 |
        f4 bes, c |
        f,2\fermata c'4 |
        f,8 g a bes c d |
        e8 d cis4 a |
        d8 e f4 gis, |
        a2.\fermata |
        f'8 e d cis d4 ~ |
        d4 cis8 b cis a |
        d4 g, a |
        d,2.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "207." }
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

