
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

  \header {
      opus = \markup { \bold "BWV 386" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Nun danket alle Gott" }
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
	\tempo 4 = 34 r2 \tempo 4 = 78 r2 |
	R1 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
	R1 |
	\tempo 4 = 34 r2 \tempo 4 = 78 r2 |
	R1 |
	\tempo 4 = 34 r2 \tempo 4 = 78 r2 |
	R1 |
	\tempo 4 = 34 r2 \tempo 4 = 78 r2 |
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
	e4 |
	e4 e fis fis |
	e2\fermata r4 cis4 |
	d4 cis b cis8. d16 |
	b2 a4\fermata } %fin du repeat
        b4 |
	b4 b cis cis |
	b2\fermata r4 b4 |
	cis8 dis e4 e dis |
	e2\fermata r4 e4 |
	fis4 e d cis |
	d2\fermata r4 cis4 |
	b4 cis8. d16 b4. a8 |
	a2.\fermata
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta2 {
	a4 |
	a4 a a a |
	a2 r4 a4 |
	b4 a gis a4 ~ |
	a8 fis8 gis4 e } %fin du repeat
        gis8 fis |
	e4 e e e |
	e2 r4 gis4 |
	a4 gis fis fis |
	gis2 r4 a4 |
	a8 b cis4 ~ cis8 b4 ais8 |
	b2 r4 a4 |
	gis4 a a gis |
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
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	cis4 |
	cis4 cis d d |
	cis2 r4 fis4 |
	e4 e e e |
	e8 d16 cis d4 cis } %fin du repeat
        b8 a |
	gis8 a b4 ~ b8 a16 gis a4 |
	gis2 r4 e'4 |
	e4 e cis b |
	b2 r4 cis4 |
	d4 cis fis g8 fis |
	fis2 r4 e4 |
	e4 e8 fis fis d b8. e16 |
	cis2.
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta2 {
	a4 |
	a'8 b cis a d, e fis d |
	a'2\fermata r4 a4 |
	gis4 a e8 d cis a |
	e'2 a,4\fermata } %fin du repeat
        e'4 |
	e8 fis gis e a, b cis a |
	e2\fermata r4 e'4 |
	a8 b cis gis a fis b b, |
	e2\fermata r4 a,4 |
	d8 cis b ais b d e fis |
	b,2\fermata r4 cis8 d |
	e4 a8 fis d b e e, |
	a2.\fermata
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "32." }
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

