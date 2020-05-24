
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

  \header {
      opus = \markup { \bold "BWV 302" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Ein feste Burg ist unser Gott" }
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
	\tempo 4 = 34 r2 \tempo 4 = 78 r2 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
	R1 |
	\tempo 4 = 30 r4 \tempo 4 = 78 r2. |
	R1 |
	r2 \tempo 4 = 30 r4 
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
	\relative c'' {
	\repeat volta2 {
	d4 |
	d4 d a8 b cis4 |
	d8 cis b4 a\fermata d4 |
	cis4 b a b |
	g8 fis e4 d\fermata } %fin du repeat
        d4 |
	a'4 b a gis |
	a2\fermata d,4 a' |
	b4 cis d\fermata cis |
	d8 cis b4 a\fermata b4 |
	b4 a b8 a g4 |
	fis4\fermata d' cis b |
	a4 b8 a g4 fis |
	e2 d4\fermata
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta2 {
	a4 |
	d,4 d8 e fis4 g |
	a4 gis e b' |
	e,4 d cis b |
	cis8 d4 cis8 d4 } %fin du repeat
        d4 |
	cis4 d e8 d b4 |
	cis2 d8 e fis4 |
	g8 fis e4 fis fis |
	fis16 gis a8 ~ a8 gis8 e4 g |
	g4 dis8 e fis4 e |
	dis4 fis fis8 e d e |
	fis8 e d4 e8 a, d4 ~ |
	d4 cis4 a4
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
	\relative c' {
	\repeat volta2 {
	fis4 |
	fis4 b,8 cis d4 e |
	fis4. e16 d cis4 fis,8 gis |
	ais4 b fis'8 e d4 |
	e8 a,4 g8 fis4 } %fin du repeat
        fis8 g |
	a4 gis8 fis e fis e4 |
	e2 a4 d |
	d4 a a a |
	b8 e fis e cis4 e |
	d8 e fis4 b, b |
	b4 b a b8 cis |
	d4 g,8 fis e4 fis16 g a8 |
	b4 a8 g fis4
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta2 {
	d8 cis |
	b4 a8 g fis4 e |
	d4 e a,\fermata b |
	cis4 d8 e fis4 g!8 fis |
	e8 d a4 d\fermata } %fin du repeat
        d8 e |
	fis4 e8 d cis d e4 |
	a,2\fermata fis'4 e8 d |
	g4 a d,\fermata fis |
	b,8 cis d e a,4\fermata e'8 fis |
	g4 fis8 e dis4 e |
	b4\fermata b4 fis' g |
	d8 cis b4 cis d |
	g,4 a d,4\fermata
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "20." }
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


