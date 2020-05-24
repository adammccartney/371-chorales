
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 429" }
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
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 |
        e4 fis gis a |
        b4 cis8 b a4\fermata cis8 d |
        e4 e8 d cis d e4 |
        d2 cis4\fermata cis |
        d4 cis b a8 b |
\break
        cis4 cis4 a4\fermata cis8 d |
        e4 e cis8 d e4 |
        d2 cis4\fermata cis |
        d4 cis b a8 b |
        cis4 cis a\fermata b |
\break
        cis4 cis fis, gis |
        a8 gis fis4 e\fermata e |
        a4 b cis b8 cis |
        d4 cis b2 |
        a2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 |
        e4. dis8 e4 e8 fis |
        gis8 fis gis4 fis a |
        b8 a gis fis e4 e |
        fis4 e e e |
        b'4 e, e8 d8 cis8 b8 |
        a8 a'8 g16 fis g8 fis4 a |
        gis8 a b4 a8 b cis4 ~ |
	cis8 b16 ais b4 ais! gis |
        fis4. e8 d4 cis |
        cis4 cis cis e |
        e4 fis fis8 dis e4 ~ |
	e4 dis4 b cis |
        cis8 d4 e8 e fis gis a |
        a2 ~ a4 gis4 |
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
        cis4 |
        b4 a b cis |
        d4 cis cis fis |
        e4 b ~ b a |
        a4 gis a a |
        a8 gis a4 gis8 gis' fis e |
        e4 e d e |
        e4 e e8 d cis fis |
        fis4. eis8 fis4 cis8 b |
        a8 b cis4 fis,8 gis a4 |
        gis4 gis fis gis |
        a4 a b4. b8 |
        a16 b cis4 b16 a gis4 gis |
        fis8 fis'4 e16 d cis8 b16 cis d8 e |
        a,8 fis'4 fis8 b, cis16 d e8 d |
        cis2. 
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 |
        gis4 fis e8 d cis4 |
        b4 eis, fis\fermata fis' |
        gis8 fis e4 a cis, |
        b4 e a,\fermata a |
        b4 cis8 d e4 fis8 gis |
        a4 a, d\fermata a'8 b |
        cis4 gis a ais |
        b4 b, fis'\fermata eis |
        fis8 gis a4 d,8 e fis4 ~ |
	fis8 eis16 dis eis8 cis fis4\fermata e |
        a8 gis fis e dis b e dis |
        cis8 a b4 e\fermata cis |
        fis4 gis a4. g8 |
        fis4 e8 d e4 e, |
        a2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "52." }
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

