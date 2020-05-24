
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 271" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Herzlich tut mich verlangen" }
                     \line { \italic "old: Befiehl du deine Wege" }
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
        \tempo 4 = 40 r2. \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. 
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
        fis4 |
        b4 a g fis |
        e2 fis4\fermata cis' |
        d4 d cis8 b cis4 |
        b2.\fermata } %fin du repeat
\break
        d4 |
        cis8 b a4 b cis |
        d2 d4\fermata a |
        b4 a g g |
        fis2.\fermata d'!4 |
        cis8 d e4 d cis |
        b2 cis4\fermata fis, |
        g4 fis e a8 g |
        fis2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 |
        d4 d e a, |
        b4 a a fis' |
        fis4 fis fis fis8 e |
        d2. } %fin du repeat
        fis4 |
        g4 fis8 e d4 g |
        g4 fis8 e fis4 fis |
        g4 fis fis e |
        dis2. e4 |
        e4 a8 gis fis gis a4 |
        a4 gis a a, |
        e'4 a,8 b cis d e4 ~ |
	e8 cis8 d4 cis4\fermata
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
        a4 |
        g4 a b8 cis d4 |
        d4 cis d cis4 ~ |
	cis4 b4 b ais |
        b2. } %fin du repeat
        b8 a |
        g4 d'8 cis b a g a |
        b4 a8 g a4 d |
        d4 c b b |
        b2. b4 |
        a8 b cis4 d e |
        fis4 e e d8 cis |
        b8 cis d4 a8 b cis4 ~ |
	cis8 fis,8 b4 ais4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        d4 |
        g4 fis e d |
        g,4 a d\fermata ais |
        b8 cis d e fis4 fis, |
        b2.\fermata } %fin du repeat
        b'4 |
        e,4 fis g8 fis e4 |
        d2 d4\fermata d |
        g8 fis e dis e fis g e |
        b'2.\fermata gis4 |
        a4 a, b cis |
        d4 e a,\fermata d |
        e4 fis8 g a8 g fis e |
        d4 cis8 b fis'4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "367." }
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

