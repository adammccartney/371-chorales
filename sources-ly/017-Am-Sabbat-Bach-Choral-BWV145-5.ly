
\version "2.13.51"

  \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

  \header {
      opus = \markup { \bold "BWV 145.5" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column { \line {"Am Sabbat früh Marien drei (2)"}
                     \line { \italic "  old: Erschienen ist der herrliche Tag "}
                 } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	R2. |
	R2. |
	R2. |
	\tempo 4 = 40 r2. \tempo 4 = 78 |
	R2. |
	R2. |
	R2. |
	\tempo 4 = 34 r2 \tempo 4 = 78 r4 |
	R2. |
	R2. |
	R2. |
	\tempo 4 = 34 r2 \tempo 4 = 78 r4 |
	R2. |
	R2. |
	R2. |
	\tempo 4 = 34 r2 \tempo 4 = 78 r4 |
	R2. |
	\tempo 4 = 40 r2. 
	}

  upper = {
	\time 3/4
	\key e \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
        \relative c' {
	e4 e e |
	b'2 cis4 |
	d4 cis b |
	a2.\fermata |
	b4 cis dis |
	e2 b4 |
	d4 cis2 |
	b2\fermata b4 |
	d4 c b |
	a4 g fis |
	g4 e2 |
	d2\fermata d4 |
	g2 a4 |
	b2 a4 |
	g4 d'2 |
	b2\fermata a4 |
	g4 fis2 |
	e2.\fermata |
	\bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
        \relative c' {
	b4 b cis |
	d4 e e |
	fis8 gis a4 gis |
	e2. |
	e4 e fis |
	g!8 a g fis e4 |
	fis4 g fis |
	dis2 e4 |
	d!2 d4 |
	e2 d4 |
	d2 cis4 |
	a2 b4 |
	b4 e d |
	d8 e fis2 |
	e4 fis8 g a4 |
	g2 fis4 |
	e2 dis4 |
	b2. |
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

  lower = {
	\time 3/4
	\key e \minor
	\clef bass
	%\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
        \relative c' {
	g8 a b4 a |
	fis4 b a |
	a4 fis b |
	cis2. |
	b4 a a |
	b2 b4 |
	b2 ais4 |
	fis2 g4 |
	a2 g4 |
	e4 a2 |
	g8 a b4 a8 g |
	fis2 fis4 |
	g4 c2 |
	b4 b2 |
	b8 c d2 |
	d2 c4 |
	b4 a8 g a4 |
	gis2. |
	\bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
        \relative c {
	e8 fis g4 a ~ |
	a4 gis a |
	fis4 d e |
	a,2.\fermata |
	gis'4 a fis |
	e8 dis e fis g4 |
	fis4 e fis |
	b,2\fermata e4 |
	fis2 g4 |
	cis,2 d4 |
	b4 g a |
	d2\fermata b4 |
	e2 fis4 |
	g4 dis2 |
	e4 b' fis |
	g2\fermata a4 |
	b4 b,2 |
	e2.\fermata |
	\bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


  \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "17." }
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

