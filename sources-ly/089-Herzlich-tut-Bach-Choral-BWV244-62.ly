
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 244.62" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Herzlich tut mich verlangen" }
                     \line { \italic "old: O Haupt voll Blut und Wunden" }
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
	fis4 |
	b4 a g fis |
	e2 fis4\fermata cis' |
	d4 cis8 d16 e d4 cis8 b |
	b2.\fermata } %fin du repeat
\break
	d4 |
	cis8 b a4 b cis |
	d2 d4\fermata a |
	b4 a b8 a g4 |
	fis2.\fermata d'!4 |
	cis8 d e4 d cis |
	b2 cis4\fermata fis, |
	g4 fis e a8 g |
	fis2 ~ fis4\fermata
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
	d4 cis d fis |
	fis4 g fis e8 d |
	d2. } %fin du repeat 
	fis4 |
	gis4 fis g g |
	a4 g fis fis |
	fis8 e dis e fis4 ~ fis8 e8 |
	e4 dis2 b'4 |
	a4 a a8 b cis a |
	a4 gis a d, |
	e4 d e fis8 e |
	e4 d cis
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
	b8 cis d4 e a, |
	b4 a a cis |
	b4 b b ais |
	fis2. } %fin du repeat
	b8 a |
	gis4 cis d e |
	d8 c4 bes8 a4 d8 c! |
	b4 c b b |
	b2. e4 |
	e4 e8 fis16 g fis4 e |
	fis4 e e a, |
	a4 a a8 b c4 |
	cis!4 b ais 
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
	gis,4 a d\fermata ais |
	b4 e fis fis, |
	b2.\fermata } %fin du repeat
	b'4 |
	eis,4 fis f e |
	fis!4 g d\fermata d |
	g4 fis8 e dis4 e |
	b2.\fermata gis'4 |
	a8 b cis4 fis,8 gis a4 |
	dis,4 e a,\fermata d4 |
	cis4 d c8 b a4 |
	ais4 b fis\fermata
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "89." }
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

