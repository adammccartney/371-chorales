
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

  \header {
      opus = \markup { \bold "BWV 415" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Valet will ich dir geben" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta2 {
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
	\key d \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	d4 |
	a'4 a b cis |
	d2 d4\fermata fis |
	e4 d d cis |
	d2.\fermata } %fin du repeat
        d8 e |
	fis4 fis e4. d8 |
	cis8 b cis4 a\fermata cis |
	d4 cis b b |
	a2.\fermata a4 |
	fis8 g a4 b a |
	a4 g8 fis fis4\fermata a |
	g4 fis e e |
	d2.\fermata
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	a4 |
	d4 d d g4 ~ |
	g4 fis8 e fis4 a8 b |
	cis4 b b a |
	a2. } %fin du repeat
        a4 |
	d4 d8 cis b gis a b |
	e,8 fis gis4 fis a4 ~ |
	a8 gis8 a2 gis4 |
	e2. e4 |
	d4 d d8 e fis4 |
	fis4 e dis d |
	d4 d2 cis4 |
	a2.
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
	\repeat volta2 {
	fis8 e |
	fis8 g a fis g4 g8 a |
	b4 a8 g a4 a' |
	g4 fis f e |
	fis!2. } %fin du repeat
        fis8 g |
	a4 d, e8 d cis b |
	a4 gis cis fis8 e |
	d4 e e8 fis e d |
	cis2. a4 |
	a4 d8 c b cis d c |
	b2 b4 c |
	b4 b b a8 g |
	fis2.
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta2 {
	d8 cis |
	d8 e fis d g fis e4 |
	b8 cis d4 d,\fermata d'' |
	ais4 b8 a gis4 a |
	d,2.\fermata } %fin du repeat
        d4 |
	d'8 cis b a gis e fis gis |
	a8 gis fis eis fis4\fermata fis |
	b8 b, cis d e d e e, |
	a2.\fermata cis4 |
	d8 e fis d g4 fis8 e |
	dis4 e b\fermata fis |
	g8 a b a g e a4 |
	d,2.\fermata
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "24." }
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

