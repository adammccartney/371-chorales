
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 381" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Meines Lebens letzte Zeit" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r4 \tempo 4 = 30 r4 \tempo 4 = 78 r2 |
        R1 |
        r4 \tempo 4 = 30 r4 \tempo 4 = 78 r2 |
        R1 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key e \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        b4 b c b |
        b4 a b2\fermata |
        d4 d e e |
        a,4 d8 c b4 b\fermata |
        g4. a8 b4 a8 g |
        fis4. e8 e2\fermata |
        b'4. c8 d4 b |
        c4 b8 a a4 g\fermata |
        b4 b e e |
        a,4 a\fermata b4 c |
        d4 d c b |
        a4 a\fermata b4. c8 |
        d4 b c b |
        a4 b b a8 g |
        fis2 e\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 g fis g8 fis |
        e8 dis e4 dis!2 |
        g8 a b a b4 e, |
        d8 g fis4 g g |
        e4 e fis e |
        e4 dis b2 |
        g'4 g a g ~ |
	g8 fis8 g4 ~ g8 fis d4 |
        g8 a b4 b a8 g ~ |
	g8 fis16 e fis4 g g |
        a8 g a4 g8 a4 g8 |
        g8 fis16 e fis4 g g |
        gis8 fis! gis b8 ~ b a8 g4 ~ |
	g8 fis8 fis4 e e ~ |
	e4 dis4 b2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key e \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 e a, g |
        g4 fis8 e fis2 |
        b8 c d2 c4 |
        d4 d d d |
        c4 c b b |
        c4 b8. a16 g2 |
        e'4 d d d |
        c8 d e4 d8. c16 b4 |
        d4 g8 fis e d e4 |
        d4 d d e |
        a,4 d8 fis e d d4 |
        d4 d d e |
        b4 e e d |
        d4 b8 a g4 a8 b |
        c4 b8 a gis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c, {
        e4 e' ~ e8 dis e g8 |
        c,2 b2\fermata |
        g4 g' ~ g8 fis g c |
        fis,8 e d4 g g,4\fermata |
        c'8 b c4 dis, e |
        a,4 b e,2\fermata |
        e'8 fis g4 ~ g8 fis g b |
        e,8 d c4 d g,\fermata |
        g'8 fis e d c4 cis |
        d2\fermata g4 fis8 e |
        fis8 e fis b e, fis g4 |
        d2\fermata g8 fis e4 ~ |
	e8 d8 e gis a,4 b8 c |
        d4 dis e8 g8 c, b |
        a4 b e2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "346." }
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

