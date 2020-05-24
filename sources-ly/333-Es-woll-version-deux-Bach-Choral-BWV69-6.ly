
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 69.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Es woll' uns Gott genädig sein (2)" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
	\repeat volta 2 {
        R1 |
        R1 |
        \tempo 4 = 44 r2 \tempo 4 = 88 r2 |
        R1 |
        R1 | } %fin du repeat
        \alternative {
          { \tempo 4 = 44 r2. \tempo 4 = 88 r4 | }
          { \tempo 4 = 44 r2. \tempo 4 = 88 r4 | }
        }
        R1 |
        r2 \tempo 4 = 44 r4 \tempo 4 = 88 r4 |
        R1 |
        r2 \tempo 4 = 44 r4 \tempo 4 = 88 r4 |
        R1 |
        r2 \tempo 4 = 44 r4 \tempo 4 = 88 r4 |
        R1 |
        r2 \tempo 4 = 44 r4 \tempo 4 = 88 r4 |
        R1 |
        R1 |
        \tempo 4 = 44 r2. 
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
        cis4 |
	\repeat volta 2 {
        d4 cis b cis8 d |
        e4 fis e d |
        cis2\fermata r4 e |
        d4 cis d b |
        a4 fis8 g a4 g | } %fin du repeat
        \alternative {
          { fis2.\fermata cis'4 | }
          { fis,2.\fermata a4 | }
        }
        g4 fis e fis |
        d4 e fis\fermata cis' |
        d4 cis8 b a4 b8 cis |
        d4. e8 cis4\fermata fis |
        e8 d cis d e4 b |
        a4 g fis\fermata e |
        a4 b cis8 d e4 |
        d4 cis b\fermata d |
        cis4 b a fis8 g |
        a2 g |
        fis2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        fis4 |
	\repeat volta 2 {
        
        fis4 fis8 e d4 a' |
        g4 fis8 gis a4 b |
        e,2 r4 fis |
        fis4 e fis d8 e |
        fis2. e4 | } %fin du repeat
        \alternative {
          { d2. e4 | }
          { d2. fis4 | }
        }
        e4 d d8 cis d4 |
        d4 b8 cis d4 e |
        fis4 g fis fis |
        fis8 gis16 a gis4 a a |
        a4 a e8 fis g fis |
        e8 d e4 d cis |
        cis8 a' gis fis e fis g4 |
        fis8 b4 ais8 fis4 b ~ |
        b8 a ~ a g ~ g fis16 e d4 ~ |
	d8 e8 fis4 e2 |
        d2.
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
        ais4 |
	\repeat volta 2 {
        b4 ais b a8 b |
        cis4 d e8 fis gis4 |
        cis,2 r4 cis |
        b8 a g4 a b8 cis |
        d2 ~ d4 cis | } %fin du repeat
        \alternative {
          { a2. ais4 | }
          { a2. a4 | }
        }
        a4 a a a |
        a4 g a4 ais |
        b8 a g4 d'8 e fis4 |
        fis4 e e d |
        cis8 fis e d cis4 b |
        e,4 a a a |
        a4 e'8 d e d cis4 ~ |
        cis8 b g' fis16 e d4 e |
        e4 d e8 a, a4 |
        d2. cis4 |
        a2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        fis4 |
	\repeat volta 2 {
        b,4 fis' g fis |
        e4 d cis b |
        a2\fermata r4 ais |
        b4 e d g |
        fis4 b a a, | } %fin du repeat
        \alternative {
          { d2.\fermata cis4 | }
          { d2.\fermata d4 ~ |}
        }
        d8 cis d4 a d8 e |
        fis4 e d cis |
        b4 e fis8 e d cis |
        b4 e a,\fermata d |
        a'4 a,8 b cis d e d |
        cis8 b cis a d4\fermata a'8 gis |
        fis4 e8 fis g!4 ais, |
        b8 d e fis b,4\fermata gis |
        a4 b cis d8 e |
        fis8 g a2 a,4 |
        d2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "333." }
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
      tempoWholesPerMinute = #(ly:make-moment 88 4)
		}
	    }
	}

