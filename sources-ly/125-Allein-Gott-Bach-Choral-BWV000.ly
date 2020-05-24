
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 000" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Allein Gott in der Höh sei Ehr" }
          \line { \hspace #9 \italic "COPIE transposée du 326 + quelques modifications. Pas de BWV" }
                   } }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 }  %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key g \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
        \relative c'' {
        \repeat volta 2 {
        g8 a |
        b4 c d c |
        b4 a b4\fermata b |
        b4 a8 b c b a4 |
        g4 a g\fermata }  %fin du repeat
\break
        g4 |
        a4 b c b |
        a4 b a\fermata a |
        b4 c d c |
        b4 a b\fermata  b |
        b4 a8 b c b a4 |
        g8 e fis4 g\fermata  
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
        \relative c' {
        \repeat volta 2 {
        d4 |
        g4 g fis e8 fis |
        g4 fis g d |
        e4 e8 d c4 d |
        d8 g4 fis8 d4 }  %fin du repeat
        d4 |
        d4 d c8 d e4 |
        e8 d d c16 b c4 d |
        d4 e fis e |
        d4 c8 e16 dis e4 d |
        e4 e8 d8 c4 d |
        d8 e d4 d 
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
        \relative c' {
        \repeat volta 2 {
        b8 c |
        d4 e a,8 b c4 |
        d4 d d g, |
        g2. c8 a |
        d8 c16 b c4 b } %fin du repeat
        b4 |
        fis4 gis a gis |
        a4 gis e a |
        g4 g a g8 a |
        b4 e,8 fis gis!4 g4 |
        g2 a4 fis |
        g8 c a4 b
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
        \relative c {
        \repeat volta 2 {
        g4 |
        g'8 fis e4 d a |
        b8 c d4 g,\fermata  g'8 fis |
        e8 d c b a g fis4 |
        b8 g d'4 g,\fermata } %fin du repeat
        g4 |
        d'4 c8 b a4 d8 e |
        f4 e a,\fermata  fis' |
        g8 fis e4 d e8 fis |
        g8 gis a4 e4\fermata  g8 fis |
        e8 d c b a b c4 |
        b8 c d4 g,\fermata 
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "125." }
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

