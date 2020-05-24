
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 113.8" }
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
        e4 d cis8 d e4 |
        d4 cis b\fermata d |
        cis4 b a8 gis! fis gis |
        a8 b b4 cis\fermata cis |
        d4 e fis4. e8 |
        d4 e cis2 |
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
        e4 fis fis gis8 ais! |
        b4 ais fis fis8 gis |
        a4 a8 g fis4 gis8 ais |
        b2 ais4 } %fin du repeat
        a4 |
        a8 g fis gis ais b cis4 |
        b4 ais fis fis8 gis |
        a!4. gis8 fis e fis4 |
        cis4 fis8 e e4 fis |
        fis8 b a g fis4 gis8 ais |
        b8 a g!4 fis2 |
        fis2.
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
        d4 |
        cis8 b cis4 d e |
        fis4. e8 d4 d |
        e4 a, d8 cis b cis |
        d8 e fis4 fis } %fin du repeat
        a,8 b |
        cis4 d8 e fis4 g |
        g4 cis,8 e d4 d |
        e8 e, fis gis a b a gis |
        fis4. gis8 a4 cis |
        b8 fis' e4 b4. cis8 |
        b4 cis8 b ais cis e4 |
        dis2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        b8 a |
        g4 fis8 e d4 cis |
        b4 fis b\fermata b' |
        a8 g fis e d4. cis8 |
        b8 cis d e fis4\fermata } %fin du repeat
        d4 |
        a'4 b fis e8 fis |
        g8 e fis4 b,\fermata b' |
        a4 dis,8 eis fis4 fis, |
        fis'8 e d e a,4\fermata ais |
        b4 cis d e8 fis |
        g8 fis e4 fis fis, |
        b2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "294." }
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

