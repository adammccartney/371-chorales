
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 417" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Von Gott will ich nicht lassen" }
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
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
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
        b4 cis d e |
        cis4. b8 a4\fermata a |
        b4 b cis8 b cis4 |
        fis,2.\fermata } %fin du repeat
\break
        fis'4 |
        e4 d d cis |
        d2.\fermata cis4 |
        d4 e fis fis |
        e4. d8 cis4\fermata cis8 d16 e |
        d4 cis8. b16 b4 b8 cis16 d |
        cis4. b8 a4\fermata g |
        fis4 b b8 cis ais4 |
        b2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        cis4 |
        fis4 e d8 fis b gis |
        gis8 fis eis16 dis eis8 fis4 fis |
        fis4 e8 d e4 e8 fis16 e |
        d2. } %fin du repeat
        b'4 |
        b4 b a a |
        a2. a4 |
        a4 a a4. gis8 |
        a8 fis gis4 e fis |
        fis4 fis g8 fis g4 |
        gis8 fis eis4 fis fis8 e |
        d8 e fis g fis g16 fis e8 fis16 e |
        dis2.
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
        ais4 |
        b4. ais8 b4. b8 |
        b8 a gis cis cis4 cis |
        b8 a g2 fis4 |
        fis2. } %fin du repeat
        d'4 |
        e8 fis g4 fis8 e16 d e8 fis16 g |
        fis2. e4 |
        fis4 e d8 a d4 |
        cis4 b16 a b8 a4 cis |
        cis8 b cis dis e d e b |
        gis8 a16 b cis4 cis d8 a |
        a4 d8 cis d e16 d cis8 fis,8 |
        fis2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        fis8 e |
        d4 cis b8 a! gis e' |
        a,8 b cis4 fis,\fermata fis'8 e |
        d8 fis g4 ais, ais4 |
        b2.\fermata } %fin du repeat
        b8 a |
        g8 g' fis e a4 a, |
        d2.\fermata a'8 g |
        fis8 e d cis d e16 fis b,4 |
        cis8 d e4 a,\fermata ais |
        b8 b'4 a8 g a16 b e,4 |
        eis8 fis16 gis! cis,4 fis4\fermata b,8 cis |
        d8 cis d e fis e fis4 |
        b,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "364." }
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

