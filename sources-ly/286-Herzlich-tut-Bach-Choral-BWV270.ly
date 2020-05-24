
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 270" }
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
        d4 |
        cis8 b a4 b cis |
        d2 d4\fermata a |
        b4 a g8 fis g4 |
        fis2.\fermata d'!4 |
        cis8 d e4 d cis |
        b2 cis4\fermata fis, |
        g4 fis e a |
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
        d8 e fis4 b,8 cis d4 |
        d4 cis8 b cis4 fis |
        fis4 fis fis4. e8 |
        d2. } %fin du repeat
        fis4 |
        e4 e8 d d4 g |
        a4 g fis fis |
        fis8 e e dis e4 e |
        dis2. e4 |
        e4 e fis8 e4 gis8 |
        fis4 e e d |
        d4 d e e |
        e4 d4 cis4^\fermata
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
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        b4 |
        b8 cis d4 d8 cis cis b |
        b8 ais b4 ais! ais |
        b4 b b ais |
        fis2. } %fin du repeat
        b8 a |
        g4 a g8 b e4 |
        d8 c b4 a d8 c! |
        b4 c8 b b4 b |
        b2. b4 |
        a4. gis8 a b cis4 |
        d8 b gis4 a a |
        b4 a a cis |
        cis8 ais b gis ais!4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        b8 a |
        g4 fis e d |
        g2 fis4\fermata fis |
        b,8 cis d e fis4 fis |
        b,2.\fermata } %fin du repeat
        b'4 |
        e,4 fis g fis8 e |
        fis4 g d\fermata d |
        g4 fis e8 g fis e |
        b'2.\fermata gis4 |
        a8 b cis4 fis,8 gis! a4 |
        d,4 e a,\fermata d8 cis |
        b8 cis d4 ~ d8 cis8 b cis |
        d8 cis b4 fis'4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "286." }
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

