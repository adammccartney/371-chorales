
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

  \header {
      opus = \markup { \bold "BWV 86.6 " }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Es ist das Heil uns kommen her" }
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
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	R1 |
	r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key e \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta2 {
	b4 |
	b4 b b d |
	cis4 b a\fermata b4 |
	gis4 e8 fis gis4 ais |
	b4 cis b\fermata } %fin du repeat
\break
	b4 |
	e4 dis cis dis |
	e8 dis cis4 b\fermata b4 |
	e4 b cis gis8 a |
	b4 a gis\fermata gis4 |
	fis4 a gis fis |
	cis4 dis e4\fermata
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta2 {
	gis4 |
	fis8 gis a4 gis fis |
	e8 a a gis e4 fis |
	e4 e8 dis e4 cis |
	fis8 e16 dis e4 dis } %fin du repeat
	e8 fis |
	gis8 ais b4 ais b |
	b4 fis fis gis |
	e8 fis gis4 a e8 fis |
	gis4 fis eis e |
	dis4 cis4 b4 b4 |
	cis4 b b4
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

  lower = {
	\time 4/4
	\key e \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	e4 |
	fis4 e8 dis e4 a,8 b |
	cis16 d e4 d8 cis4 b |
	b4. a8 gis4 fis |
	fis8 b4 ais8 fis4 } %fin du repeat
	gis4 |
	cis4 fis, fis' fis |
	b,4 ais dis e |
	b4 e e cis |
	d4 cis cis b |
	b4 e4 e4 dis8 b |
	fis2 gis4
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta2 {
	e4 |
	dis4 b e fis8 gis |
	a4 e a,\fermata dis |
	e8 fis gis4 cis, fis8 e |
	dis8 cis16 b fis'4 b,\fermata } %fin du repeat
	e4 |
	cis4 dis8 e fis4 b |
	gis8 e fis4 b,\fermata e4 |
	gis4 e a8 b cis4 |
	eis,4 fis cis\fermata e4 |
	b4 cis8 dis e4 b |
	ais4 b e,4\fermata
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "4." }
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

