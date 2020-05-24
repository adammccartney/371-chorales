
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 36(2).4" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Wie schön leuchtet der Morgenstern" }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 
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
	\relative c' {
	\repeat volta 2 {
        d4 |
        a'4 fis8 e d4 a' |
        b8. cis32 d b4 a\fermata a |
        b4 cis d cis |
        b8 d cis b a4\fermata fis |
        b4 a g fis |
        e2 d4\fermata } %fin du repeat
        r4 |
        a'2 fis\fermata |
        a2 fis\fermata |
        fis4 fis e e |
        fis4 fis e fis |
        g4 fis e2 |
        d2\fermata d'4 cis |
        b4 a g fis |
        e2 d4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        a4 |
        a4 a b cis |
        fis4 e e fis |
        g4 g fis e8 a |
        a4 gis e d |
        d4 d d8 cis d4 |
        d4 cis a } %fin du repeat
        r4 |
        e'2 d |
        e2 d |
        d4 d cis cis |
        d4 d cis dis |
        e4 d!8 cis b4 cis |
        a2 fis'4 fis8 e |
        d8 e fis4 fis8 e e d |
        d8 cis16 b cis4 a
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
	\repeat volta 2 {
        fis4 |
        e4 d8 e fis gis a4 |
        a4 gis cis d |
        d4 e a,8 b cis4 |
        fis,8 fis' e d cis4 a |
        g4 a b8 g a4 |
        a4. g8 fis4 } %fin du repeat
        r4 |
        a2 a |
        cis2 a |
        a4 a a a |
        a4 a a a |
        b8 cis d4 d8 cis16 b a8 g |
        fis2 fis8 gis ais4 |
        b4 cis d8 e a,4 |
        b4 a8 g fis4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        d4 |
        cis4 d8 cis b4 fis'8 e |
        d8 b e4 a,\fermata d |
        g4 fis8 e fis gis a4 |
        d,4 e a,\fermata d |
        g4 fis e d |
        a2 d4\fermata } %fin du repeat
        r4 |
        cis2 d \fermata |
        a2 d\fermata |
        d8 e fis g a b a g |
        fis8 e fis d a a' g fis |
        e4 b'8 a g4 a |
        d,2\fermata b4 fis |
        g4 a b8 cis d4 |
        g,4 a d,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "86." }
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

