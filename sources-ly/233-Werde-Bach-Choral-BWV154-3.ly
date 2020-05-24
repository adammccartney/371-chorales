
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 154.3" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Werde munter, mein Gemüte" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 | } %fin du repeat
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key a \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        cis4 d e e |
        d4 cis b b\fermata |
        cis4 d e cis |
        b4 b a2\fermata | } %fin du repeat
        b4 cis d d |
        cis4 cis b2\fermata |
        d4 e fis fis |
        e4 e d2\fermata |
        cis4 d e e |
        d4 cis b b\fermata |
        cis4 d e8 d cis4 |
        b4 b a2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        a4 a gis a |
        a8 gis a4 gis gis |
        a4 a b a |
        a4 gis e2 | } %fin du repeat
        gis4 ais b b |
        b4 ais fis2 |
        fis4 a a a |
        a8 e a g fis2 |
        e4 a e8 fis gis4 |
        a4 a gis gis |
        a4 a a8 gis a4 |
        a4 gis e2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key a \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e4 fis e8 d cis4 |
        d4 e e e |
        e4 fis b, cis8 d |
        e8 b e d cis2 | } %fin du repeat
        e4 e fis fis |
        fis8 cis fis e d2 |
        d4 cis d d |
        d4 cis a2 |
        a8 b cis4 b e |
        fis4 e e e |
        e4 fis e e |
        e8 b e d cis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        a4 fis cis fis |
        b,4 cis8 d e4 e\fermata |
        a8 gis fis4 gis a |
        e4 e a,2\fermata | } %fin du repeat
        e'4 d8 cis b cis d e |
        fis4 fis b,2\fermata |
        b'4 a8 g fis e d4 |
        a'4 a, d2\fermata |
        a'8 gis! fis4 gis cis |
        fis,8 gis a4 e e\fermata |
        a8 fis e d cis b a4 |
        e'4 e a,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "233." }
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

