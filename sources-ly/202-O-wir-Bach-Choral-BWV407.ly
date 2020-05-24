
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 407" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "O wir armen Sünder" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        \tempo 4 = 40 R1 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        \tempo 4 = 40 R1 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 R1 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        \tempo 4 = 40 R1 \tempo 4 = 78 |
        R1 |
        R1 |
        R1 |
        \tempo 4 = 40 R1 \tempo 4 = 78 |
        R1 |
        R1 |
        R1 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
	}

  upper = {
	\time 4/4
	\key d \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 a a a |
        b2 a2\fermata |
        g4 fis e e |
        d1\fermata |
        a'4 a a a |
        b2 g2\fermata |
        b4 b c b |
        a1\fermata |
        a4 a a a |
        d2 a4\fermata a |
        b4 b a a |
        g1\fermata |
        a4 a a a |
        a2 fis2\fermata |
        g4 fis e4. d8 |
        d1\fermata |
        a'2 b2 |
        c1 |
        a2 gis2 |
        a1\fermata |
        d2. e4 |
        a,2 b |
        cis1 |
        a2. gis4 |
        a1\fermata |
        a4. g8 fis4 g |
        e2 d2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        fis4 g fis8 g a4 ~ |
	a8 g16 fis g4 ~ g fis\fermata |
        e4. d8 ~ d8 cis16 b cis4 |
        a1 |
        d4 cis8 d e cis d e |
        fis8 g fis4 e2 |
        g4 gis a4. gis!8 |
        e1 |
        fis!4 fis8 e fis g a4 ~ |
	a4 g4 fis fis |
        e8 dis e4 e d8 c |
        b1 |
        e8 cis d e fis4 fis |
        e8 g fis e e dis16 cis dis4\fermata |
        e4. d!8 d8 cis16 b cis4 |
        a1 |
        fis'2 f4 e |
        e4 f8 g a4 g ~ |
	g4 f4 e2 |
        e1 |
        b'2. a8 g! |
        fis2 ~ fis8 gis a4 |
        gis2. cis,4 ~ |
	cis4 d8 e fis4 e8 d |
        e1 |
        cis8 d e4 ~ e8 d8 d4 ~ |
	d8 cis16 b cis4 a2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key d \major
	\clef bass

	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 e e d |
        d2 d2 ~ |
        d8 cis16 b a4 b a8 g |
        fis1 |
        fis4 e a8 g fis4 ~ |
	fis8 e8 b'4 b2 |
        e4 e e8 a, f' e |
        cis1 |
        d4 d8 cis d e fis e |
        d8 c d4 d d8 c! |
        b8 a g4. fis16 e fis4 |
        g1 |
        e8 g fis e d a' d4 ~ |
        d8 cis c4 b2 |
        b4 b b8 g e a |
        fis1 |
        a4 d2 c8 b |
        a4 g f e |
        d4 d'2 c8 b |
        cis!1 |
        fis,4 e8 fis g4 e |
        fis8 gis a2 fis4 |
        cis'4 b8 a gis fis gis4 |
        a4 b8 cis d2 ~ |
	d4 d4 cis b |
        a2 ~ a16 b c4 b16 a |
        b8 e,4 fis16 g fis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        d4. cis8 d e fis d |
        g4 g, d'2\fermata |
        e4 fis g a8 a, |
        d1\fermata |
        d4 a8 b cis a d cis |
        dis8 e4 dis!8 e2\fermata |
        e8 d! c b a f d e |
        a1\fermata |
        d8 e fis g fis e d c |
        b8 a b cis d4\fermata d4 |
        g8 fis e d c cis d dis |
        e1\fermata |
        cis!8 a b cis d e fis g |
        a4 a, b2\fermata |
        e,8 g b a g e a4 |
        d,1\fermata |
        d'2 gis, |
        a2. b8 c |
        d4 b e2 |
        a,1\fermata |
        b2. cis!4 |
        d2 dis |
        e2 eis2 |
        fis2 b,2 |
        a1\fermata |
        fis'4 cis d g, |
        gis4 a d,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "202." }
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

