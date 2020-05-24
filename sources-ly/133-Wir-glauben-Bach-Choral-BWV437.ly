
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 437" }
      piece = \markup { \fontsize #2 \bold \column \center-align { \line { \hspace #9 "Wir glauben all an einen Gott, Schöpfer Himmels" }
                     \line { "und der Erden"}
                 } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 40 r1 |
	}

  upper = {
	\time 4/4
	\key d \dorian % c \major
	\clef treble
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d2 a'4 g |
        a4 e f2 |
        e2\fermata g2 |
\break
        f4 e d4 cis |
        d2\fermata a'4 a |
        d4 c b a8 b |
\break
        c4 b a2\fermata |
        r4 b4 c a |
        a4 e f f |
\break
        e2\fermata d4 e |
        f4 g a g |
        f4 e d2\fermata |
\break
        d'4 d e d |
        e4 cis d2 |
        d2\fermata e4 b |
        c4 a a e |
        f2 e2\fermata |
        a4 gis a b |
        c4 b a4 gis! |
        a2\fermata b!4 cis |
        d2 a4 g |
        a4 e f2 |
        e2\fermata g2 |
        f4 e d cis |
\break
        d8 e f4 e2 |
        d2\fermata f4 g |
        a4 b! c b |
        a2\fermata r4 g4 |
\break
        f4 e d2\fermata |
        e2 f4 g |
        f4 g d cis |
        d1\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        r4 a4 d8 f4 e16 d |
        e4. d16 cis d2 ~ |
	d4 cis4\fermata r4 d8 e8 ~ |
	e8 d4 cis8 d16 c bes8 a4 |
        a2 f'8 e d4 ~ |
	d8 e16 f e4 e4. d8 |
        e8 f4 e16 d c2 |
        r4 e8 f g e c d |
        e8 d e cis a b16 cis d4 ~ |
	d8 cis16 b cis4\fermata d4. cis8 |
        a8 bes16 c! d8 c c cis d e8 ~ |
	e8 d4 cis8 a2 |
        b!8 c! d b c4 d8 g |
        g8 a bes g a fis g4 ~ |
	g8 fis16 e fis4\fermata e8 fis gis e |
        a4 cis, d4. cis8 |
        d4. cis16 b cis2 |
        e2 e4 f4 ~ |
	f8 fis8 g gis a a, b d8 ~ |
	d8 c16 b c4\fermata g'8 f! e g8 ~ |
	g8 f16 e f4 f4. e8 ~ |
	e8 d4 cis8 d2 |
        e2 e4 a, |
        d8 c bes c a bes e, e' |
        d8 cis d2 cis4 |
        a2 d4 c!4 ~ |
	c4 f8 d e f g e |
        f2 r4 f8 e8 ~ |
	e8 d4 cis8 d2 |
        cis8 d e4 ~ e8 d cis8 e |
        a,8 bes4 a8 ~ a8 b a4 |
        a1 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key d \dorian % c \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        r4 f8 g a4 d8 g,8 ~ |
	g8 f16 e a4 a2 |
        a2 r4 d,8 a' |
        a4 bes8 a16 g f8 g16 f e f g8 ~ |
	g8 f16 e f4\fermata d'4 a4 ~ |
	a8 gis8 a4 gis!8 c4 b16 a |
        gis8 a4 gis8 a2 |
        r4 g!8 f e g a4 |
        a4. g8 f8. g16 a4 |
        a2 f8 g16 a bes8 a16 g |
        f4. e8 f e d bes' |
        cis,8 a' bes a16 g f2 |
        g2 g8 a b g |
        c8 a e'4 d8 c4 bes8 |
        a2 a4 e'8 d |
        c8 d e4 a,2 |
        a4. gis8 a2 |
        a8 b c d c b a gis |
        a4 e'4 ~ e8 d e4 |
        e2 g,4 a |
        a2 d4. c16 bes |
        a2 ~ a8 g a b |
        c!2 cis8 d e4 |
        a,4 g8 a fis g a4 ~ |
	a8 g8 a4 bes a8 g8 ~ |
	g8 f16 e f4\fermata bes8 a g c |
        a4 d8 b g4. c8 |
        c2 r4 d8 a |
        a8 bes4 a16 g f2 |
        a2 a8 bes4 a16 g |
        a8 g16 f g8 f16 e f4 e16 f g8 ~ |
	g8 fis16 e fis2.\fermata |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        r4 d8 e f d bes'4 |
        cis,4. b16 a d8 e f d |
        a2\fermata r4 b8 cis |
        d8 f, g a bes g a4 |
        d,2\fermata d'8 e f d |
        b4 c8 d e c f4 |
        e8 d e4 a,2\fermata |
        r4 e'8 d c e f4 |
        cis8 b cis a d a f d |
        a'2\fermata bes8 a g a |
        d8 c bes c f, g16 a bes8 a16 g |
        a8 f g a d,2\fermata |
        g8 a b g c4 g'8 b |
        e,8 f g e fis d g4 |
        d2\fermata c8 d e4 ~ |
	e8 f8 g e f g a g |
        f8 e d4 a2\fermata |
        c!8 d e b c4 d4 ~ |
	d8 dis8 e c f!4 e |
        a,2\fermata e'4 a, |
        d2 d8 c bes c |
        f,8 g a4 d,8 e f d |
        a'2\fermata e'8 d cis e |
        d4 d8 c c8 bes a g |
        f8 e d f g e a4 |
        d,2\fermata d'4 e |
        f8 e d g e d e c |
        f2\fermata r4 b,8 cis |
        d8 bes g a bes!2\fermata |
        a8 b! cis a d4 e4 ~ |
	e8 d4 cis8 d gis, a4 |
        d,1\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "133." }
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

