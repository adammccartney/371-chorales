
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 103.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Was mein Gott will, das g'scheh allzeit" }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key b \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        fis8 g |
        a4 b a d |
        d4 cis d\fermata d |
        cis4 b e d8 cis |
        cis2 b4\fermata } %fin du repeat
        b4 |
        b4 b8 cis16 d cis8 b a4 |
        a4 gis a\fermata a |
        b4 cis d cis |
        b2 cis4\fermata fis,8 g |
        a4 b a d |
        d4 cis d\fermata d |
        cis4 b e d8 cis |
        cis2 b4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 |
        d4 d d d8 e |
        fis8 g e4 fis fis |
        fis8 e d4 g fis8 gis |
        ais8 b4 ais8 fis4 } %fin du repeat
        fis4 |
        e8 fis gis4 a e |
        e4 e e fis |
        fis4 fis fis e |
        d4 cis8 b fis'4 d8 e |
        fis4 g d8 e fis g |
        a8 e fis g fis4 b |
        e,8 fis g a b a16 g fis4 |
        fis8 g fis e dis4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key b \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        b4 |
        a4 g fis8 g a b |
        a4 a a b |
        ais4 b b8 cis d e |
        fis8 cis fis e d4 } %fin du repeat
        d8 cis |
        b4 e e8 d cis4 |
        b4 cis8 d cis4 d8 cis |
        b4 e d8 cis b ais |
        fis'4 e ais, b |
        cis4 d8 e fis4 a, |
        a8 b a4 a a8 gis |
        a4 b b8 cis d gis, |
        ais8 b4 ais8 fis4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        b4 |
        fis4 g d8 e fis g |
        a4 a, d\fermata b |
        fis'4 g8 fis e4 b' |
        fis2 b,4\fermata } %fin du repeat
        b'8 a! |
        gis8 fis e4 a,8 b cis d |
        e8 d e4 a,\fermata d8 e |
        d8 cis b ais b4 cis |
        d4 g fis\fermata b |
        a!4 g fis e8 d |
        a'8 g a4 d,\fermata b |
        a4 e'8 fis g a b4 |
        fis8 e fis4 b,4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "120." }
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

