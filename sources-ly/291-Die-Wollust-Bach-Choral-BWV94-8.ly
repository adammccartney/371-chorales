
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 94.8" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Die Wollust dieser Welt" }
                                  \line { \italic "old: Was frag' ich nach der Welt" }
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
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
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
        fis4 e8 d a'4 a |
        b2.\fermata b4 |
        e,4 e a g |
        fis4 e d\fermata a' |
        b4 b a g |
        fis2.\fermata e4 |
        fis4 gis a b8 cis16 d16 |
        cis4 b8 a a4\fermata a |
        a4 a d c |
        b2.\fermata b4 |
        b4 b e d |
        cis2.\fermata a4 |
        b4 a b cis |
        d2.\fermata a4 |
        a4 g8 fis e fis16 g e4 |
        d2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 |
        d4 cis d fis |
        g2. e4 |
        e8 d cis4 d e |
        e8 d4 cis8 a4 d |
        d4 g g8 fis e4 |
        d2. e4 |
        d4 d cis fis |
        e2 e4 e |
        fis8 e fis g a4 fis |
        g2. a4 |
        a4 gis gis8 fis fis e |
        e2. d4 |
        d4 d g8 fis g4 |
        fis2. e4 |
        fis8 e d4 d4 cis |
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
	%\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 |
        a4 g a d |
        d2. d4 |
        cis8 b a4 a a |
        a2 fis4 a |
        g4 b cis8 d d cis |
        a2. a4 |
        a4 b a a |
        a4 gis cis cis |
        d4 d a d |
        d2. fis4 |
        e4 b b8 a a gis |
        a2. a4 |
        g4 a e'8 d e4 |
        d2. e4 |
        a,4 b b a8 g |
        fis2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        cis4 |
        d4 e fis d |
        g2.\fermata gis4 |
        a4 a8 g! fis e d cis |
        d4 a d\fermata fis |
        g4 e a a, |
        d2.\fermata cis4 |
        d4 cis8 b fis'4 e8 d |
        e2 a,4\fermata a' |
        d4 d,8 e fis4 d |
        g2.\fermata dis4 |
        e8 fis e d cis d e4 |
        a,2.\fermata fis'4 |
        g4 fis e ais, |
        b2.\fermata cis4 |
        d8 cis b a g4 a4 |
        d2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "291." }
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

