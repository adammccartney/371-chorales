
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 266" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Am Sabbat früh Marien drei (1)" }
                     \line { \italic "old: Als vierzig Tag' nach Ostern" }
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
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        \tempo 4 = 40 r2. |
	}

  upper = {
	\time 3/4
	\key e \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 e e |
        b'2 b4 |
        a4 b g8 a |
        b4 a a |
        b2\fermata g4 |
        fis4 g a |
        b4 a g |
        g2 fis4 |
        g2\fermata a4 |
        b2 b4 |
        a2 a4 |
        g2 g4 |
        fis2.\fermata |
        e4 fis dis |
        e2\fermata e4 |
        a2 a4 |
        b2 b4 |
        g2 g4 |
        fis2.\fermata |
        e8 fis g a b4 |
        b2 a4 |
        b2.\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        b4 b b |
        fis'2 g4 ~ |
	g4 fis4 e |
        fis4 e8 g fis e |
        fis2 b,8 cis |
        d2 e8 fis |
        g4. fis8 ~ fis e |
        e8 d c4 d |
        d2 fis4 |
        g2 g4 |
        fis8 e fis4 dis |
        e8 dis e2 ~ |
	e4 dis2 |
        e4 c b |
        b2 b4 |
        e4 d c |
        d4 e fis ~ |
	fis4 e8 dis e4 |
        e4 dis2 |
        b4 e fis |
        e4. g8 fis e |
        dis2. |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key e \minor
	\clef bass

	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {

        g4 g g |
        fis4 dis' e |
        e4 b b |
        b4 c8 e dis e |
        dis2 e4 |
        a,4 b c |
        d4. c8 b4 |
        c4. b8 a4 |
        b2 d4 |
        d2 e8 d |
        c4 b b |
        b2 b4 |
        b2. |
        g4 a fis |
        g2 g4 ~ |
	g4 fis4 fis |
        g4 b2 |
        b2 b4 |
        b2. |
        g4 b b8 a |
        g8 fis e dis e4 |
        fis2. |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {

        e4 g e |
        dis4 b e |
        cis4 dis e |
        d!4 c8 b c4 |
        b2\fermata e4 |
        d8 c b4 a |
        g4 d' e |
        c4 a d |
        g,2\fermata d'4 |
        g4 fis e ~ |
	e4 dis4 b |
        e4 g e |
        b2.\fermata |
        c4 a b |
        e2\fermata e4 |
        cis4 d8 c b a |
        g4 g'8 fis e dis |
        e4 e,8 fis g a |
        b2.\fermata |
        e,4 e' dis |
        e8 d! c b c4 |
        b2.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "208." }
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

