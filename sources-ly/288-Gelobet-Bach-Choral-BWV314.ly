
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 314" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Gelobet seist du, Jesu Christ" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
        \key a \mixolydian % d \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 |
        a4 a b a |
        d4 e d2\fermata |
        cis8 d e4 fis e8 d |
        cis4 b a\fermata a |
        d4 cis8 d e4 b |
        a8 gis fis4 e\fermata e |
        b'4 b b cis |
        d8 cis b4 a8 b cis4 |
        b2\fermata a4 a |
        a2 a4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        cis8 d |
        e4 fis fis8 e e4 |
        a4 a8 g fis2 |
        e8 fis g4 a8 fis b4 |
        b8 a a gis e4 fis |
        fis8 g a4 a gis |
        fis8 e e dis b4 cis |
        dis4 dis e e |
        d4. e8 fis4 e8 fis |
        gis2 fis4 e4 ~ |
	e8 d16 e fis4 e4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
        \time 4/4
        \key a \mixolydian % d \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 |
        a4 d d cis |
        d8 e16 fis cis4 a2 |
        a4 b cis8 d e4 |
        e4 e cis d |
        d8 e fis4 e e8 b |
        b4 b gis a8 gis |
        fis4 b8 a gis!4 ais |
        b8 a! g!4 fis8 gis a4 |
        e'2 cis8 d e g,! |
        fis8 a d4 cis
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        fis4 |
        cis4 d g4. fis16 e |
        fis8 d a'4 d,2\fermata |
        a'4 g fis gis |
        a4 e a,\fermata d8 cis |
        b4 fis' cis8 d e4 |
        dis8 e b4 e\fermata a4 |
        a4 gis8 fis e d cis4 |
        b4. cis8 d4 cis8 dis |
        e2\fermata fis4 cis |
        d2 a4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "288." }
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

