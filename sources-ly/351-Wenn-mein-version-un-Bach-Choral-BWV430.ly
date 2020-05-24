
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 430" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Wenn mein Stündlein vorhanden ist (1)" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
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
        a4 |
        e4 fis gis a |
        b4 cis a4\fermata cis8 d |
        e4 e cis8 d e4 |
        d2 cis4\fermata cis |
        d4 cis b a8 b |
        cis4 cis a\fermata cis8 d |
        e4 e cis8 d e4 |
        d2 cis4\fermata cis |
        d4 cis b a8 b |
        cis4 cis a\fermata b |
        cis4 cis fis, gis |
        a8 gis fis4 e\fermata e |
        a4 b cis4. b16 cis |
        d4 cis b2 |
        a2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        cis8 d |
        e4 b b a |
        e'4 e d e |
        e4 e e fis |
        fis8 eis fis gis a4 a |
        b4 a gis fis |
        fis4. eis8 cis4 fis |
        e8 fis gis4 a4. a8 |
        a8 gis16 fis gis4 a a |
        a8 gis a4 e4. fis16 gis |
        a4 g fis e |
        e8 gis fis e dis4 e |
        fis8 e4 dis8 e4 b |
        e4 e e8 d16 e fis4 ~ |
	fis8 gis8 a4 ~ a8 gis16 fis gis4 |
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
	\relative c {
        e4 |
        a4 gis8 fis cis'4 cis |
        b4 a8 g fis4 a |
        gis8 a8 b4 a8 b cis4 |
        b8 cis d e fis4 e |
        fis8 e4 d cis8 cis b |
        a4 gis fis a |
        b8 a b e e4. e8 |
        fis8 d b e e4 e |
        fis8 b, cis d e4. d8 |
        e4 e d b |
        a8 gis a8 cis b4 b |
        b4 cis8 fis,8 gis4 gis8 a16 b |
        e,4 b' a4. gis16 a |
        b8 b cis d16 e fis8 d b e |
        cis2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        a8 b |
        cis4 dis eis fis |
        gis4 a d,\fermata a'8 b |
        cis8 b8 a8 gis a4 ais |
        b4 b, fis'\fermata a4 ~ |
	a8 gis4 fis eis8 fis d |
        a8 b cis4 fis,\fermata fis' |
        gis8 fis e4 a cis, |
        b4 e a,\fermata a'4 ~ |
	a2 ~ a8 gis cis b |
        a8 a,4 b16 cis d4\fermata gis,! |
        a8 e' a4 ~ a8 gis fis e |
        dis8 e a b e,4\fermata e8 d |
        cis8 b a gis a b16 cis d4 ~ |
	d8 cis16 b fis'8 e d b e4 |
        a,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "351." }
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

