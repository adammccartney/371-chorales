
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 184.5" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "O Herre Gott, dein göttlich Wort" }
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
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 } %fin du repeat
        r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 40 r2. 
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
        g4 |
        g4 fis e d |
        g4 a b4\fermata a |
        b8 c16 d c4 b a8 b |
        c4 b a2 |
        g2.\fermata } %fin du repeat
\break
        g4 |
        a4 b g\fermata g |
        a4 b g\fermata e |
        a4. g8 fis4 g8 fis |
        e2 d4\fermata d4 |
        g4 fis e d |
        g4 a b\fermata a |
        d4. c8 b4 a8 b |
        c4 b a2 |
        g2.\fermata
        \bar "|."
        } % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
        \relative c' {
        \repeat volta 2 {
        d4 |
        e4 d c c |
        b4 d d d |
        d4 e d8 e fis4 |
        g2 ~ g4 fis |
        d2. } %fin du repeat
        d4 |
        d4 d e d |
        e4 fis e b |
        a8 b cis4 d d |
        d4 cis a b |
        b8 cis d4 c8 b a4 |
        d4 d d d8 e |
        fis4 g8 a d,8 e fis4 |
        g2 ~ g4 fis |
        d2.
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
        b4 |
        b4 b8 a g4 fis |
        g4 fis g fis |
        fis4 g8 a b c d4 |
        c8 d e4 a,8 b c4 |
        b2. } %fin du repeat
        b4 |
        fis4 g g b |
        a8 g fis4 b g8 fis |
        e4 a a g8 a |
        b4 a8 g fis4 fis |
        g4 a ~ a8 g fis4 |
        g4 fis g fis |
        b4. a8 b c d4 |
        c8 d e4 a,8 b c4 |
        b2.
        \bar "|."
        } % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
        \relative c' {
        \repeat volta 2 {
        g4 |
        e4 b c d |
        e4 d g,\fermata d'4 |
        b4 e,8 fis g4 fis |
        e8 e' d c d2 |
        g,2.\fermata } %fin du repeat
        g'4 |
        d4 g, c\fermata b |
        cis4 dis e\fermata e8 d |
        cis8 b a4 d8 cis b a |
        g4 a d\fermata b |
        e,4 fis8 g a b c4 |
        b4 d g,\fermata d'8 c |
        b4 e8 fis g4 fis |
        e4 d8 c d2 |
        g,2.\fermata
        \bar "|."
        } % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "14." }
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

