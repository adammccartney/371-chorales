
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 80.8" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Ein feste Burg ist unser Gott" }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
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
	\relative c'' {
	\repeat volta 2 {
        d4 |
        d4 d a8 b cis4 |
        d8 cis b4 a\fermata d4 |
        cis4 b a b8 a |
        g8 fis e4 d\fermata } %fin du repeat
        d4 |
        a'4 b a gis |
        a2\fermata d,4 a' |
        b4 cis d\fermata cis |
        d4 cis b2 |
        a4\fermata b b a |
        b8 a g4 fis\fermata d'! |
        cis4 b a b8 a |
        g8 fis e4 d4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        a4 |
        a8 g fis e d4 e |
        a,8 a'4 gis8 e4 b' |
        e,8 fis g4 fis8 e d cis |
        b4 cis a } %fin du repeat
        d4 |
        cis8 fis e4 e8 fis e4 |
        e2 d4 d8 c |
        b8 d g4 fis fis |
        fis4 e8 a fis4 e8 d |
        cis4 e d8 e fis4 |
        fis4 fis8 e dis4 fis |
        e4 d!8 g g fis16 e fis4 |
        g8 b, cis4 a4
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
	\relative c' {
	\repeat volta 2 {
        fis8 e |
        d8 e fis g a4 g |
        fis4 b,8 e cis4 fis,8 gis |
        a4 e'8 d cis4 b8 cis |
        d4 a8 g fis4 } %fin du repeat
        fis8 g |
        a8 d cis b cis4 b |
        cis2 fis,8 g a4 |
        d4 e a, a |
        a8 gis a4 a gis |
        e4 g!8 a b cis d c |
        b4 b b b8 a |
        g8 a b4 e8 cis d4 |
        d4 a8 g fis4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d8 cis |
        b4 a8 g fis g fis e |
        d4 e a,\fermata b |
        cis8 d e4 fis g8 a |
        b8 g a a, d4\fermata } %fin du repeat
        d8 e8 |
        fis4 gis a8 d, e4 |
        a,2\fermata b4 fis' |
        g4 e d\fermata fis |
        b,4 cis d e |
        a,4\fermata e'8 fis g4 d |
        dis4 e b\fermata b4 |
        e8 fis g e cis a d cis |
        b8 g a4 d,4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "273." }
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

