
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 8.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Liebster Gott, wann werd ich sterben" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        R1*4 |
	r2 } %fin du repeat
        \alternative {
          { r2 | } 
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            r2 | }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        R1*9 |
	r2 \tempo 4 = 34 r2 
	}

  upper = {
	\time 4/4
	\key e \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        r4 b8 b e4 b |
        cis4 b a4. b16 a |
        gis4 fis r4 b8 a |
        gis4 cis8 b ais fis b4 ~ |
	b4 ais4 } %fin du repeat
        \alternative {
          { b2 | } 
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            b2 | }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        r4 fis8 gis a4 gis |
        cis4. dis8 bis2 |
        r4 cis8 b ais4 b |
        b4 ais b fis8 fis |
        b4. a8 gis4 cis |
        bis4 cis2 bis4 |
        cis2 r4 e8 b! |
        cis4 gis8 a b4. a8 |
        gis4 fis8 e dis4 e4 ~ |
	e4 dis4 e2\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        r2 r4 gis8 gis |
        a4. gis8 gis fis16 e fis8 fis |
        e4 dis r2 |
        r4 gis4 fis4 fis |
        fis4 fis4 } %fin du repeat
        \alternative {
          { fis2 | }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            fis2 | }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        r4 dis8 e fis4 e8 fis |
        gis8 fis gis a gis2 |
        r4 gis4 fis fis |
        fis4 fis fis r4 |
        r4 fis4 ~ fis e4 |
        fis8 gis ais4 gis2 |
        gis4 gis8 dis e2 ~ |
	e4 e4 dis!8 e fis4 ~ |
	fis8 e8 dis e b4 cis |
        b2 b |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key e \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        r2 r4 e8 e |
        e4 e cis b |
        b4 b r2 |
        r4 e8 dis cis4 dis |
        cis4 cis4 } %fin du repeat
        \alternative {
          { dis2 | }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            dis2 | }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        r2 r4 e8 dis |
        cis8 a' gis fis dis2 |
        r4 e8 dis cis4 dis |
        cis8 b cis4 dis r4 |
        r4 dis8 dis b4 cis |
        dis4 e dis2 |
        e4 e8 bis cis4. d8 |
        cis2 b2 ~ |
	b4 c4 fis, g |
        fis8 e fis4 gis!2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        e,4 r4 r4 e'8 e |
        a4 e fis dis |
        e4 b8 cis dis2 |
        e8 e, e'4 ~ e8 dis cis b |
        fis'4 fis,4 } %fin du repeat
        \alternative {
          { b2 | }
          { \set Timing.measureLength = #(ly:make-moment 2 4)
            b4. cis8 | }
        }
        \set Timing.measureLength = #(ly:make-moment 4 4)
        dis4 b fis cis'8 dis |
        e8 dis e fis gis,4 gis'8 fis |
        e2. dis8 e |
        fis4 fis, b4. cis8 |
        dis4 b e8 dis cis b |
        a8 gis fisis4 gis2 |
        cis2 r4 cis'8 gis |
        a8 b cis4 gis dis |
        e4 a,4 ~ a ais |
        b2 e,2\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "43." }
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

