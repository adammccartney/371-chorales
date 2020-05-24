
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

  \header {
      opus = \markup { \bold "BWV 248.53" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Gott des Himmels und der Erden" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta2 {
	R1 |
	r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
	R1 |
	r2 \tempo 4 = 34 r2 \tempo 4 = 78 | } %fin du repeat
	R1 |
	r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
	R1 |
	r2. \tempo 4 = 30 r4 
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
	\repeat volta2 {
	a4 b cis8 d e4 |
	a,4 gis fis e\fermata |
	fis4 gis a b |
	cis8 d b4 a2\fermata | } %fin du repeat
	cis4 cis b cis |
	d4 cis8 b b a b4\fermata |
	fis4 gis a b |
	cis8 d b4 a8 gis a4\fermata |
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	e4 e a ~ a8 gis8 ~ |
	gis8 fis4 e8 ~ e dis b4 |
	d!8 cis8 b4 e4 e |
	e8 fis e4 e2 | } %fin du repeat
	a4 a e8 fis gis4 |
	fis4 e8 fis gis fis gis4 |
	cis,8 d e4 ~ e8 d16 cis fis4 |
	e4 e e8 d e4 |
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
	\repeat volta2 {
	cis4 b a8 b cis d |
	e8 b b4 b8. a16 gis4 |
	b8 cis8 d8 e8 a,4 e4 |
	a4. gis8 cis2 | } %fin du repeat
	e4 ~ e8 dis e d cis b |
	a8 b cis dis e4 e |
	ais,8 b b4 a4 a ~ |
	a8 b gis d' cis b cis4 |
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	a4 gis fis cis8 b |
	cis8 dis e4 b e\fermata |
	b4. d8 cis b a gis |
	a8 d e e, a2\fermata | } %fin du repeat
	a'8 gis fis4 gis8 fis e4 |
	fis8 gis a4 e e4\fermata |
	e8 d cis b cis fis e d |
	e4 e, a a4\fermata |
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "35." }
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

