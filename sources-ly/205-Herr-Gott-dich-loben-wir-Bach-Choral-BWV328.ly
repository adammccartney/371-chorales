
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 328" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Herr Gott, dich loben wir, Herr Gott, wir danken dir" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78
        \repeat volta 3 {
        r4^\markup { "(3 mal)" } |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
\break      
        \repeat volta 2 {
        r4^\markup { "Heilir ist Gott (2 mal)" }  |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 } %fin du repeat
        
        r4 |
        r2 r4^\markup { "Heilig" } r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 
        \bar "||"
        
        \repeat volta 6 {
        r4^\markup { "(6 mal)" } |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        \repeat volta 6 {
        r4^\markup { "(6 mal)" } |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        
        
        r4^\markup { "Laß uns im Himmel hahen Teil" } |
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78
        \bar "||"
        
        \repeat volta 3 {
        r4^\markup { "(3 mal)" } |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r8^\markup { "Aur dich hoffen wir" } r8 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 34 r1 |
	}

  upper = {
	\time 4/4
	\key a \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 |
        g4 a c a |
        a2\fermata r4 c4 |
        c4 b a a |
        g2.\fermata
\break
        \repeat volta 3 {
        c4^\markup { "(3 mal)" } |
        c4 c b a |
        b4 a a\fermata a4 |
        a4 g a b |
        c4 a g4\fermata } %fin du repeat
\break      
        \repeat volta 2 {
        e4^\markup { \column { \line { "Heilig ist Gott" } \line { "(2 mal)" } } }  |
        g4 a b b |
        a2.\fermata } %fin du repeat
        
        b4 |
        b4 b8 c d4^\markup { "Heilig" } a4 |
        a4 g a b |
        c4 a g4\fermata 
        \bar "||"
        
        \repeat volta 6 {
        c4^\markup { "(6 mal)" } |
        c4 c b a |
        b4 a a\fermata a4 |
        a4 g a b |
        c4 a g4\fermata } %fin du repeat
\break
        \repeat volta 6 {
        a4^\markup { "(6 mal)" } |
        a4 a g b |
        b4 a a\fermata a |
        a4 g a8 b c4 |
        g4 g e\fermata } %fin du repeat
        
        
        f4^\markup { "Laß uns im Himmel hahen Teil" } |
        d4 f e d |
        e4 fis g4\fermata g4 |
        g4 g a4. f8 |
        g4 f e c |
        d4 f e d |
        f4 d c4\fermata g'4 |
        g4 g a4. f8 |
        g4 f e4\fermata f4 |
        f4 f e d |
        f4 d c\fermata g' |
        g4 g a4. f8 |
        g4 f e4\fermata e8 f |
        g4 a a a |
        c4 a a\fermata a4 |
        a4 g a8 b c4 |
        g4 g e4\fermata
        \bar "||"
        
        \repeat volta 3 {
        a4^\markup { "(3 mal)" } |
        a4 a g b |
        b4 b a\fermata a |
        a4 g a c |
        g4 g e\fermata } %fin du repeat
\break
        f8^\markup { "Auf dich hoffen wir" } e8 |
        d4 f g a |
        g4 f e\fermata f |
        f4 g a g8 f |
        g4 f e\fermata g |
        e4 c d2 |
        e1 ~ |
        e1\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        b4 |
        e4 f4 ~ f8 e d4 |
        c2 r4 e8 fis |
        g8 a8 ~ a g8 ~ g fis16 e fis4 |
        d2.
        \bar "||"
        
        \repeat volta 3 {
        g4 ~ |
	g8 fis16 e16 fis8 a8 ~ a8 g16 fis e8 d8 |
        d8 g4 fis16 e fis4 e8 g8 ~ |
	g8 f!8 ~ f8 e16 d c4 d16 e f8 |
        e16 fis g4 fis8 d4 } %fin du repeat
        
        \repeat volta 2 {
        c4 |
        d4 e8 d16 c f e d4 e16 d |
        c2. } %fin du repeat
        
        
        g'8 a |
        g4 g g4 ~ g8 f!16 e |
        f4. e16 d c8 d16 e f4 |
        e16 fis g4 fis8 d4
        \bar "||"
        
        \repeat volta 6 {
        g8 f |
        e8 fis g a8 ~ a g8 ~ g fis! |
        g8 fis e4 fis d |
        c16 a d8 ~ d c8 ~ c d16 c b8 d |
        g4. fis8 d4 } %fin du repeat
        
        \repeat volta 6 {
        f4 |
        e16 f g8 ~ g fis8 ~ fis e16 fis g4 |
        g8 f! g4 ~ g8[ f8] \fermata c f16 e |
        f4. e8 f4 f ~ |
	f8 e8 d4 c } %fin du repeat
        
        
        c4 ~ |
	c8 b8 c d8 ~ d8 c d4 ~ |
	d8 c16 b c8 b16 a b4 d |
        e8 f g e c f f16 e d cis |
        d8 a a d8 ~ d cis8\fermata a4 |
        g4 c8 d8 ~ d8 c8 ~ c8 b8 |
        a16 b c4 b8 g4 c |
        c8 d e4 ~ e8 d16 cis d4 ~ |
	d8 e8 ~ e8 d8 ~ d8 cis8\fermata d4 ~
        d8 c8 b8 d8 ~ d8 c8 ~ c8 b8 |
        c4. b8 g4 c4 |
        c8 d e d16 e f4 f |
        e4. d8 cis4 c |
        b8 c16 d e8 d c d16 e f4 |
        e4 ~ e16 d c b c4 e4 ~ |
        e8 f g4 f g8 f |
        e4 d c 
        \bar "||"
        
        \repeat volta 3 {
        e4 |
        f4 e8 d16 c b4 b8 c16 d |
        e4 ~ e16 fis g8 ~ g8 fis8\fermata f4 |
        f4 c c c8 d |
        e4 e16 cis d8 ~ d cis8\fermata } %fin du repeat
        
        d4 |
        a8 bes16 c d4 ~ d8 e8 ~ e8 d8 ~ |
	d8 cis8 d4 cis d |
        d4 ~ d8 e f e d4 |
        d4 d16 cis d8 cis4 d |
        c4 g a gis8 a |
        b8 c d4 c2 ~ |
	c4 b8 a b2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key a \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g4 |
        b4 d g,4 ~ g8 f |
        e2 r4 c'8 d |
        e8 d d4 e16 d16 c4 d16 c16 |
        b2.
        \bar "||"
        
        \repeat volta 3 {
        e4 ~ |
	e8 d16 c d4 ~ d4 c8 d16 c |
        b8 e16 d cis4 d e |
        d4. c16 b a8 g f4 |
        g8 e' d8. c16 b4 } %fin du repeat
        
        \repeat volta 2 {
        g4 ~ |
	g8 a16 b c8 a8 ~ a8 gis16 fis gis4 |
        e2. } %fin du repeat
        
        e'8 dis |
        e4 e d e8 a, ~ |
	a8 d16 c b8 c16 b a8 b16 c d4 |
        g,8 e' d8. c16 b4 
        
        \repeat volta 6 {
        c4 |
        g4 ~ g8 d'8 d4 d |
        d4. cis8 d4 f,8 g |
        a8 f g4 ~ g8 fis8 d'4 |
        c8 e d8. c16 b4 } %fin du repeat
        
        \repeat volta 6 {
        d4 |
        a8 e'8 ~ e8 d16 c b4 e |
        d4 e d a8 bes |
        c4 c c c ~ |
	c4. b8 g4 } %fin du repeat
        
        a4 |
        g4 c,8 g' g4 g8 d |
        a'4 ~ a8 d,8 d4 b' |
        c8 d e c a c d16 e f8 |
        f8 e d a a4 e |
        d4 a'8 g g4 g |
        c,8 a' g8. f16 e4 e8 f |
        g4 c8 bes a f ~ f8 g16 a |
        bes4 a a a |
        g4 g g g |
        f8 a g8. f16 e4 e8 f |
        g8 a bes4 c d8. c16 |
        bes8 a a4 a a |
        g8 a16 b c8 b a b16 c d4 |
        c16 b a g a8 f' e4 c8 d |
        e8 d ~ d c ~ c d8 g,8 a |
        b8 c4 b8 g4 
        \bar "||"
        
        \repeat volta 3 {
        c4 |
        d4 a8 f'8 ~ f8 e16 d e8 a, |
        g8 fis g4 d' c ~ |
	c8 bes8 bes4 a8 g f4 |
        e8 g bes4 a } %fin du repeat
        
        a8 g |
        f4 ~ f8 g16 a bes8 c16 bes a8 f8 |
        bes8 g a4 a a |
        bes4 bes c bes |
        bes4 a8 gis a4 g |
        g4 e f2 |
        e4 b'4 ~ b4 a4 ~ |
	a4 gis8 fis gis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c, {
        e4 |
        e'4 d c d |
        a2\fermata r4 a'4 |
        e8 fis g4 c, d |
        g,2.\fermata
        \bar "||"
        
        \repeat volta 3 {
        e'4 |
        a4 d,8 e16 fis g4. fis!8 |
        g8 e a4 d,\fermata cis |
        d4 e f8 e d4 |
        c4 d g,\fermata } %fin du repeat
        
        \repeat volta 2 {
        c4 |
        b4 a8 f' d b e4 |
        a,2.\fermata } %fin du repeat
        
        e'8 fis |
        g8 fis e4 b cis |
        d4 g f8 e d4 |
        c4 d g,\fermata
        \bar "||"
       
        \repeat volta 6 {
        e'8 d |
        c8 d e fis g4 d |
        g,4 a d,\fermata d'8 e8 |
        f4 e4 d g8 f |
        e8 c d4 g,\fermata } %fin du repeat
     
       \repeat volta 6 {
        d'4 |
        cis4 d e4. fis8 |
        g4 cis, d\fermata f |
        a,8 bes c4 f,8 g a b |
        c4 g c4\fermata } %fin du repeat
        
        f,4 |
        g4 a8 b c4 b |
        a4 d4 g,4\fermata g'8 f! |
        e8 d c4 f8 g16 a bes4 ~ |
	bes8 cis,8 d4 a\fermata a4 |
        b4 a8 b c4 g |
        f4 g c\fermata c8 d |
        e4 c f, bes8 a |
        g4 d' a\fermata d8 c |
        b!8 a g4 c g |
        a8 f g4 c,4\fermata c'8 d |
        e8 f g4 f8 e d4 |
        d8 cis d4 a4\fermata a' |
        e8 d c4 f8 e d4 |
        a'8 g f8 d a'4\fermata a,8 b |
        c8 d e4. d8 e f |
        g8 f g g, c4\fermata 
        
        \repeat volta 3 {
        a4 |
        d4 c8 d e f g f |
        e8 d cis4 d\fermata f!8 e |
        d4 e f a,8 b |
        c4 g a\fermata } %fin du repeat
        
        d4 |
        d8 c bes a g4 f |
        e4 d a'\fermata d8 c |
        bes8 a g4 f8 g16 a bes!4 ~ |
	bes8 g8 d'4 a\fermata b4 |
        c2. b8 a |
        gis4. e8 a b c d |
        e2 e,\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "205." }
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

