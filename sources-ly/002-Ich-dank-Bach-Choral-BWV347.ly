
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	
	}

  \header {
      opus = \markup { \bold "BWV 347" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Ich dank dir, lieber Herre" }
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
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
	r4 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	R1 |
	\tempo 4 = 40 r2. \tempo 4 = 78 r4 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	R1 |
	R1 |
	\tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
	\key a \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta2 {
	a4 |
	a4 a a b |
	g4 fis e\fermata b' |
	cis4 b a gis8 fis |
	gis4 fis e4\fermata } %fin du repeat
	e'4 |
	d4 cis b a |
	a8 b cis4 b4\fermata cis4 |
	d4 cis b ais |
	b2.\fermata e,4 |
	a4 b cis d |
	e4 d8 cis b4\fermata d4 |
	cis4 b e4. d8 |
	cis8 b a b cis4 b |
	a2.\fermata 
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	e4 |
	fis4 e fis fis |
	e4 dis b gis' |
	a4 gis8 fis e2 ~ |
	e4 dis4 b4 } %fin du repeat
	cis'8 b |
	a4 a gis a8 g8 |
	fis8 gis! a4 gis ais |
	b8 a! g4 fis8 e fis4 |
	fis2. e8 d8 |
	cis4 d e fis8 gis |
	a2 e4 b' |
	a8 gis fis4 e fis8 gis |
	a2 a4 gis4 |
	e2. 
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

  lower = {
	\time 4/4
	\key a \major
	\clef bass
	\partial 4
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	cis4 |
	cis4 cis8 b a gis fis4 |
	b4. a8 gis!4 e' |
	e4 dis cis2 |
	b4. a8 gis4 } %fin du repeat
	gis4 |
	a8 b cis d e4 e |
	d4 e e e |
	fis8 b,4 ais8 b4 cis4 |
	d2. gis,4 |
	a4 gis8 fis e e' d4 |
	cis8 d e fis gis4 fis |
	fis8 e d cis b4 cis8 d |
	e4. d8 cis8 fis b, e16 d |
	cis2. 
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	a8 gis |
	fis4 cis d dis |
	e4 b e,4\fermata e' |
	a4 b cis b8 a |
	b4 b, e4\fermata } %fin du repeat
	cis4 |
	fis8 gis a4 e cis8 a |
	d4 cis8 d e4\fermata cis |
	b4 cis d8 g fis4 |
	b,2.\fermata cis4 |
	fis4 e8 d cis4 b |
	a8 b cis d e4\fermata b4 |
	fis'8 gis a4 gis8 e a4 ~ |
	a8 gis8 fis4 e8 d e4 |
	a,2.\fermata 
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "2." }
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

