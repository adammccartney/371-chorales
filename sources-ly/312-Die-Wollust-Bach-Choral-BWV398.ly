
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 398" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Die Wollust dieser Welt" }
                                  \line { \italic "old: O Gott, du frommer Gott (1)" }
                              } }
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
	\key d \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 |
        fis4 d a' a |
        b2\fermata r4 b |
        e,4 e a g |
        fis4 e d\fermata a' |
        b4 b a g |
        fis2\fermata r4 e4 |
        fis4 gis a b8 cis16 d |
        cis4 b a\fermata a |
        a4 a d c8 b |
        b2\fermata r4 b |
        b4 b e d8 cis |
        cis2\fermata r4 a |
        b4 a b cis |
        d2\fermata r4 a |
        b8 a g fis e4. d8 |
        d2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 |
        d4 d8 e fis4 d |
        d2 r4 d |
        cis4 cis d e |
        d4 cis a fis' |
        g4 g8 fis e d e4 |
        d2 r4 cis |
        d4 e e fis |
        e4. d8 cis4 cis |
        d4 d d d |
        d2 r4 g |
        g8 fis g a b8 a b gis |
        a2 r4 d, |
        g4 fis fis fis |
        fis2 r4 fis8 e |
        d4 d d4 cis |
        a2.
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key d \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        fis4 |
        a4 a d a |
        g2 r4 b |
        a4 a a a |
        a4. g8 fis4 d' |
        d4 g, a a |
        a2 r4 a |
        a4 b a a |
        a4 gis e e |
        fis8 e fis g a8 g a fis |
        g2 r4 d' |
        e4 e b e |
        e2 r4 d |
        d4 d d cis |
        b2 r4 d8 cis |
        b4 b8 d a4 g |
        fis2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        d4 |
        d8 e fis g fis e fis d |
        g2\fermata r4 g |
        a8 g fis e fis e d cis |
        d4 a d\fermata d |
        g8 fis e d cis b cis a |
        d2\fermata r4 a |
        d8 cis d b cis4 d |
        e8 d e8 e, a4\fermata a |
        d8 cis d e fis e fis d |
        g2\fermata r4 g8 fis |
        e8 dis e fis gis8 fis gis e |
        a2\fermata r4 fis, |
        g8 b d e d cis b ais |
        b2\fermata r4 fis' |
        g8 a b g a4 a, |
        d2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "312." }
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

