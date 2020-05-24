
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 248(5).46" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "In dich hab ich gehoffet, Herr (1)" }
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
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
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
        a4 e' e d8 cis |
        b4 cis d8 cis b4 |
        a2\fermata r4 a4 |
        b4 cis d b |
        e4 fis e\fermata cis |
        cis8 d e4 d cis8 b |
        a8 b cis4 b\fermata cis |
        a4 b8 cis d4\fermata cis |
        b4 cis d\fermata cis |
        b4 a e'4. d8 |
        cis4 d8 cis b2 |
        a2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        fis4 |
        e8 fis gis a b4 e, |
        dis4 e d8 a' gis!4 |
        e2 r4 fis4 |
        fis4 e8 cis gis' fis e dis |
        e16 fis16 gis8 a fis gis4 a |
        a4 ais b8 a gis fis |
        e8 fis16 gis a8 fis gis4 a8 gis |
        fis4. gis16 ais b4 ais! |
        b8 a! g4 fis e8 a8 ~ |
	a8 gis4 fis8 gis a b4 ~ |
	b8 e,8 a2 gis4 |
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
        cis8 d |
        e4 d8 cis b4 a |
        b4 a8 g! a4 e'8 d |
        cis2 r4 a4 |
        a4 gis b8 a b4 |
        b8 e4 dis8 e4 e |
        fis4 fis fis e |
        e8 d cis dis e4 e |
        d!8 cis d e fis4 fis8 e |
        d4 e a, a |
        b4 cis8 dis e2 |
        e8 cis a cis fis d b e |
        cis2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        fis4 |
        cis'4 b8 a gis4 a4 ~ |
	a8 g8 fis e fis d e4 |
        a,2\fermata r4 d4 |
        dis8 e4 eis8 ~ eis fis8 gis a |
        gis8 e b' b, e4\fermata a8 gis |
        fis8 e d cis b4 e8 d |
        cis8 b a4 e'\fermata a, |
        d!8 e d cis b4\fermata fis' |
        g8 fis e4 d\fermata a |
        e'2 ~ e8 fis gis e |
        a8 gis fis e d b e4 |
        a,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "77." }
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

