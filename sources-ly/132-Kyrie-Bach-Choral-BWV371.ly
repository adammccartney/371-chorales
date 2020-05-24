
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 371" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Kyrie, Gott Vater in Ewigkeit" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 40 r1 \tempo 4 = 78 |
        \bar "||"
        R1 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 40 r1 \tempo 4 = 78 |
        \bar "||"
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 40 r1 |
	}

  upper = {
	\time 4/4
        \key e \phrygian % c \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g2 a |
        b2\fermata a4 c |
\break
        c4 b a a |
        g2\fermata a4 a |
\break
        g4 f e e |
        d2\fermata d4 a' |
\break
        a4 g a b |
        c4 b a2 |
\break
        g2\fermata g4 f!8 g |
        a4 g g f |
        e1\fermata |
        \bar "||"
\break
        e2^\markup { "Christe, aller Welt" } d2 |
        g2 a4 b |
        c4 c c2\fermata |
\break
        c4 c b a |
        g4 a b b |
\break
        b2\fermata e,4 d |
        g4 a8 b c4 c |
\break
        c2\fermata c4 c |
        b4 a g\fermata a |
\break
        a4 g f e |
        d2\fermata d4 a' |
\break
        a4 g a b |
        c4 b a2 |
\break
        g2\fermata g4 f!8 g |
        a4 g g f |
        e1\fermata |
        \bar "||"
\break
        b'2^\markup { "Kyrie. Gott heil'ger Geist" } c2 |
        d2\fermata r4 b4 |
        d4 c b a |
\break
        g2\fermata b4 c |
        d4 b8 c d4 c |
\break
        b4 a g\fermata a |
        a4 g f e |
\break
        d2\fermata d4 a' |
        a4 g a b |
\break
        c4 b a2 |
        g2\fermata g4 f!8 g |
        a4 g g f |
        e1\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e8 f g4 ~ g8 fis16 e fis4 |
        g2 f!4 e |
        a4 g4 ~ g8 fis16 e fis4 |
        d2 f!8 e d cis |
        d8 cis d4 ~ d8 cis16 b cis4 |
        a2 d4 e |
        f16 e d4 e16 d c8 f4 e8 ~ |
	e16 fis16 g4 g8 ~ g8 fis16 e fis4 |
        d2 e4 d |
        c8 d e4 e d |
        c4 b8 a b2\fermata |
        \bar "||"
        
        b4 c8 b a4 b8 c |
        d8 f e d c d16 e f4 |
        e16 f g4 f8 ~ f8 e16 d e4\fermata |
        e16 fis g4 fis8 ~ fis8 e16 d cis b a8 |
        d8 c4 a'8 ~ a8 g8 fis16 e fis8 |
        e2 c4. b8 |
        c8 d16 e f e f8 e4 f ~ |
	f8 e16 d e4\fermata e8 a16 gis a4 ~ |
	a8 g!4 fis8 d4 f8 g |
        a8 g16 f f8 e ~ e8 d4 cis8 |
        a2 a4 d16 e f8 |
        f4. e8 ~ e16 d e g f16 e fis a |
        g8 d d g ~ g8 fis16 e fis4 |
        d2 e4 f8 e |
        f4 ~ f8 e16 d e4. d16 c |
        b8 d c2 b4^\fermata |
        \bar "||"
        
        g'2 g2 |
        g2 r4 g4 |
        g4. a4 g fis8 |
        d2 g4 a4 ~ |
	a8 g16 fis g4 g4. fis!8 |
        b,16 c d8 e d16 c b4 d |
        d8 es d cis d4. cis8 |
        a2 d4 e |
        a,8 fis'4 e8 fis!4. e16 dis |
        e8 d!4 g fis16 e fis4 |
        d2 d8 e d e |
        f8 e d g cis, a d4 |
        cis4 c b2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key e \phrygian % c \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        b4. c16 d e8 a, d4 |
        d2 d4 c8 d |
        e2 ~ e8 c a d16 c |
        b2 d8 c16 bes a4 |
        bes4 a8 d bes g e8 a16 g |
        f2 f4 e8 a |
        a8 d16 c b8 c16 b a8 c d c16 b |
        a8 g16 a b8 c16 d e8 c a d |
        b2 c4. bes8 |
        a8 b! c bes a bes4 a8 |
        a4 gis8 fis gis2\fermata |
        \bar "||"
        
        g!4 a8 g fis4 g ~ |
	g8 d'8 c b a4. g16 f |
        g8 c16 bes a4 g2 |
        a4 a b8 g e' d16 c! |
        b8 c16 bes a8 d16 c b8 d8 ~ d16 c b a |
        g2 g4 g |
        g4 c8 d g,4 a ~ |
	a8 g16 f g4\fermata c8 d e4 ~ |
	e8 d8 e d16 c b4 d ~ |
	d8 cis8 d a a4 bes8 a16 g |
        f2 f8 g a d |
        d8 b! g c16 b a4. g16 fis |
        e8 a b e ~ e8 c a d16 c |
        b2 c4. bes8 |
        c16 bes c8 d g, c bes! a b16 a |
        gis4 a2 gis!4\fermata |
        \bar "||"
        
        e'2 e2 |
        b2 r4 d4 |
        d4 e8 d d4 e8 d16 c |
        b2 e4 e |
        d4 d8 c b4. a8 ~ |
	a8 g4 fis8 g4 f8 g |
        a8 c4 bes b8 e, a16 g |
        fis2 b4 cis |
        d4. c!16 b c8 fis,4 g16 a |
        g8 a4 g8 e'16 d c4 b16 a |
        b2 b8 bes a g |
        f4. e16 d e8 f16 g a8 b8 ~ |
	b8 a16 gis a4 ~ a8 gis16 fis gis4\fermata |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        e4. d8 c4 d |
        g,2\fermata d'4 a8 b |
        c8 d e d c a d4 |
        g,2\fermata d'8 e f4 ~ |
	f8 e8 f bes! g e a8 a, |
        d2\fermata d4. cis8 |
        d8 f4 e8 f a4 gis8 |
        a8 e4 d8 c a d4 |
        g,2\fermata c4 d8 e |
        f4 c cis d |
        e1\fermata |
        \bar "||"
        
        e8 d c2 b8 a |
        b4 e2 d4 |
        e4 f c2\fermata |
        a4 d g,8 g'4 f!8 ~ |
	f8 e8 f fis g b,16 c d8 dis |
        e2\fermata e8 c g' f! |
        e4. d8 c b a b |
        c2\fermata a8 b c d |
        e8 b c d g,4\fermata d'8 e |
        f8 a, b cis d f, g a |
        d,2\fermata d'8 e f d |
        bes8 b c4 ~ c8 cis d dis |
        e8 fis g e c a d4 |
        g,2\fermata c8 bes a g |
        f8 a bes b c cis d4 ~ |
	d8 c!16 b c8 d e2\fermata |
        \bar "||"
        
        e,4 e'2 d8 c |
        g'2\fermata r4 g,8 a |
        b4 e,8 fis g b c d |
        g,2\fermata e8 e' d c |
        b8 b'4 a8 g fis e4 ~ |
	e8 b8 c d g,4\fermata d'8 e |
        f8 fis g4 ~ g8 gis a8 a, |
        d2\fermata g,8 g'4 fis!16 e |
        fis8 b e,4 ~ e8 dis16 cis dis8 b |
        e8 fis g e c a d4 |
        g,2\fermata g'8 cis, d4 ~ |
	d8 c!8 b! bes a4. gis8 |
        a8 b c d e2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "132." }
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

