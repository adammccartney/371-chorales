
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 197.5" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Nun bitten wir den heiligen Geist" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
	r2 \tempo 4 = 30 r4 
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
        a4 |
        b4 b a gis8 fis |
        e4 fis8 gis a4 b |
        a2.\fermata cis8 d |
        e4 fis e4. d8 |
        cis8 b a gis fis4 gis |
        a2\fermata cis4 cis |
        cis4 b cis2 |
        a4\fermata a4 b8 cis d4 |
        cis4. b8 a2\fermata |
        b8 cis d4 cis8 b a gis |
        fis4 gis8 a b4. a8 |
        gis4 fis e2\fermata |
        fis4 gis a2 ~ |
	a4 gis4 a\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 |
        e4 e e d8 cis |
        b8 cis a d cis4 fis8 e |
        e2. a4 |
        b8 cis d cis b a gis fis |
        gis8 eis cis4 d d |
        cis2 e4 e |
        e8 fis gis fis eis fis4 eis8 |
        fis4 fis gis8 a b4 |
        b4 a8 g fis2 |
        fis8 gis! a b a gis fis e |
        dis4 e8 fis gis4. fis8 ~ |
	fis8 e4 dis8 b2 |
        d4 e e8 cis fis4 |
        e2 e4
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
        cis4 |
        b8 a gis4 a b8 a |
        gis8 a fis b e, a4 gis8 |
        cis2. e4 |
        e4 a, b8 cis d4 |
        gis,4 a a b |
        e,2 a4 a |
        gis8 a b4 b8 a gis cis |
        cis4 cis b8 a4 gis16 fis |
        e4 a a2 |
        d8 cis4 b8 cis8 dis e4 |
        b4 b b8 cis16 dis e8 b |
        b4. a8 gis2 |
        a4 b8 d cis4 c |
        b8 a b d cis4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 |
        gis8 fis e d cis a d4 ~ |
	d8 cis8 d b cis fis d e |
        a,2.\fermata a'4 |
        a8 gis fis4 gis8 a b4 |
        eis,8 cis fis e d cis b4 |
        a2\fermata a8 b cis d |
        e4. d8 cis2 |
        fis4\fermata fis8 e d cis b e |
        a,8 b cis4 d2\fermata |
        d8 e fis gis a b cis a |
        b8 a gis fis e dis cis dis |
        e8 gis b b, e2\fermata |
        d8 cis d b cis fis e dis |
        e4 e, a4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "84." }
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

