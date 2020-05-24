
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 168.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Wenn mein Stündlein vorhanden ist (2)" }
                     \line { \italic "old: Herr Jesu Christ, du höchstes Gut" }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
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
	\key b \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        b4 |
        b4 ais b cis |
        d4 cis b\fermata b |
        cis4 cis fis e |
        d2 cis4\fermata } %fin du repeat
        fis4 |
        e4 d cis e |
        d4 cis b\fermata d |
        cis4 b a8 gis! fis gis |
        a4 b cis\fermata cis |
        d4 e fis4. e8 |
        d4 e8 d cis2 |
        b2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        fis4 |
        e8 fis g4 fis g |
        fis4 fis8 e d4 e |
        e8 fis g4 fis cis' |
        cis8 ais b4 ais } %fin du repeat
        a4 |
        a8 gis a b a4 g8 fis |
        fis4 fis fis fis8 gis |
        a4 gis fis cis |
        fis4 gis a a8 g |
        fis8 b a g fis2 ~ |
	fis4 e8 fis g4 fis8 e |
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
        d4 |
        cis8 d e4 d8 cis b ais |
        b8 cis ais4 b gis |
        a4 e' d8 e fis4 |
        fis4. eis8 fis4 } %fin du repeat
        fis4 |
        b,4 fis'8 e e d cis4 |
        cis8 b b ais d4 b |
        e4 d8 cis cis b a gis! |
        fis8 a d4 e e |
        d8 g fis e d4 cis4 ~ |
	cis8 fis,8 b2 ais4 |
        fis2. 
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        b4 |
        cis4 cis, d e |
        fis8 e fis4 b,\fermata e |
        a,4 a' d8 cis b ais |
        b4 b, fis'\fermata } %fin du repeat
        d4 |
        e4 fis8 gis a4 ais |
        b4 fis b,\fermata b' |
        a8 gis fis eis fis4. e8 |
        d8 cis b4 a\fermata a' |
        b4 cis d8 cis b ais |
        b8 a g fis e4 fis |
        b,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "92." }
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

