
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 300" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Du großer Schmerzensmann, vom Vater so geschlagen" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
	\key e \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 |
        g4 g g a |
        b2\fermata r4 b |
        b4 d g,8 a b4 |
\break
        a2 g4\fermata b4 |
        a4 b g a |
        fis2\fermata r4 g4 |
\break
        g4 g a g |
        fis2 e4\fermata fis |
        fis4 fis fis g |
\break
        a2\fermata r4 a |
        a4 b c c |
        b2\fermata r4 b4 |
\break
        b4 d c b |
        a2\fermata r4 a4 |
        b4 a g fis |
        e2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 |
        d4 e d e8 fis |
        g2 r4 g |
        g4 g8 fis e fis g4 |
        g4 fis d g |
        fis4 fis4 ~ fis8 e8 ~ e fis8 |
        dis2 r4 e |
        e4 d e8 dis e4 ~ |
	e4 dis4 b d |
        d4 e d cis |
        d2 r4 fis |
        fis4 g g fis |
        g2 r4 g |
        g4 g4 ~ g8 fis8 g4 |
        fis2 r4 fis ~ |
	fis8 e8 fis4 ~ fis8 e4 dis8 |
        b2.
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key e \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        b4 |
        b8 a g a b4 c |
        d2 r4 d |
        e4 d c d ~ |
	d8 a8 d c b4 d |
        d4 dis b c |
        b2 r4 b |
        c4 g c cis |
        fis,8 b4 a8 g4 b |
        b4 cis4 ~ cis8 b a! g |
        fis2 r4 d' |
        d4 d e d |
        d2 r4 d |
        e4 d e8 d d4 |
        d2 r4 d8 c |
        b2 ~ b4 b8. a16 |
        g2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        e4 |
        b4 c b a |
        g2\fermata r4 g'8 fis |
        e4 b c b8 c |
        d2 g,4\fermata g' |
        d8 c b4 e a, |
        b2\fermata r4 e8 d |
        c8 d c b a4 ais |
        b2 e4\fermata b8 cis |
        d4 ais b e |
        d2\fermata r4 d |
        d'8 c! b4 a d, |
        g2\fermata r4 g8 fis |
        e8 d c b a4 g |
        d'2\fermata r4 d |
        dis8 cis dis b e4 b |
        e,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "167." }
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

