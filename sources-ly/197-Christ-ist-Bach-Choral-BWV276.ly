
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 276" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Christ ist erstanden" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        \tempo 4 = 40 r1 \tempo 4 = 78 |
        \bar "||" 
        
        \time 4/4
        r4^\markup { "Wär er nicht erstanden" } r2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        \tempo 4 = 40 r1 \tempo 4 = 78 |
        \bar "||"

        \time 4/4
        \set Timing.measureLength = #(ly:make-moment 1 4)
        r4^\markup { "Alleluja" } |
        \set Timing.measureLength = #(ly:make-moment 4 4)
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        \tempo 4 = 40 r1 |
	}

  upper = {
	\time 4/4
	\key d \dorian % c \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 |
        g4 a8 b c4 d |
        a2\fermata a4 f8 g |
        a8 g f4 e8 d e4 |
        d2\fermata r4 f |
        g4 g d c |
        f4 g a\fermata a8 g |
        f4 g a8 g f4 |
        e4 d e2\fermata |
        d4 d d2 |
        d1\fermata |
        \bar "||" 
        
        \time 4/4
        a'4^\markup { "Wär er nicht erstanden" } a g a8 bes |
        c4 d a\fermata a |
        a8. g16 f8 g a g f4 |
        e8 d e4 d\fermata f |
        g4 g d c |
        f4 g a\fermata a |
        a8 g f8. g16 a4 f |
        e4 d e2\fermata |
        d4 d d2 |
        d1\fermata |
        \bar "||"

\break
        \time 4/4
        \set Timing.measureLength = #(ly:make-moment 1 4)
        a'4^\markup { "Alleluja" } |
        \set Timing.measureLength = #(ly:make-moment 4 4)
        f4 c' a\fermata c8 bes |
        a4 g f\fermata a8 g |
        f4 e d\fermata f |
        g4 g d c |
        f4 g a\fermata a8 g |
        f4 g a f |
        e4 d e2\fermata |
        d4 d d2 |
        d1\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        f4 ~ |
	f8 e8 e gis a4. g8 ~ |
	g8 f16 e f4\fermata e d |
        c8 cis d4 cis!8 d4 cis8 |
        a2 r4 d ~ |
	d8 c!16 b c4 ~ c8 b4 a16 bes |
        c8 d e4 f e ~ |
	e8 d4 cis8 d4. c8 |
        bes8 a4 b8 cis2 |
        d4 c c bes ~ |
	bes4 a8 g a2\fermata | 
        \bar "||"
        
        \time 4/4
        f'4 e8 d g bes a g |
        f2 f4 f |
        e4 d8 e f cis d4 ~ |
	d4 cis4 d c |
        c8 b! c4 ~ c8 bes4 a16 g |
        c4 c c c8 cis |
        d4 a d d ~ |
	d8 c4 b!8 c2 |
        c8 bes a4 g4. bes!8 |
        a1 |
        \bar "||"

        \time 4/4
        \set Timing.measureLength = #(ly:make-moment 1 4)
        e'4 |
        \set Timing.measureLength = #(ly:make-moment 4 4)
        d4 c c c8 d |
        e8 f4 e8 c4 e ~ |
	e8 d4 c8 c bes\fermata c4 |
        d4 c8 bes a b c bes |
        a16 g a8 d c c4 f8 e |
        d4 ~ d8 c16 bes a4 ~ a8 d16 c |
        b!8 a4 gis8 cis2 |
        d4 c! bes8 a g16 a bes!8 ~ |
	bes8 a8 bes g a2^\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key d \dorian % c \major
	\clef bass
	\partial 4
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d8 c |
        b4 c8 d e f16 e d4 |
        d2 a4 a |
        a4 a bes8 f g a16 g |
        f2 r4 a |
        e8 f g4 ~ g16 d e4 f16 g |
        a8 f bes4 c a |
        a4 g8 bes a4 ~ a16 g a8 |
        g16 f g8 f16 e f8 e2 |
        a8 g a fis g d g4 ~ |
	g4 fis8 e fis2 | 
        \bar "||"
        
        \time 4/4
        d'4 c8 b c4 c |
        c4. bes8 c4 c8 d |
        e8 a,4 g8 f g a4 |
        a4. g8 f4 a |
        g8 f g4 g8. f16 e4 |
        a4 g f a8 g |
        f8 e d e f g a4 |
        a8 e f4 g2 |
        a8 g4 fis8 g d g4 ~ |
	g4 fis8 e fis2^\fermata |
        \bar "||"

        \time 4/4
        \set Timing.measureLength = #(ly:make-moment 1 4)
        a4 ~ |
        \set Timing.measureLength = #(ly:make-moment 4 4)
        a8 bes a g f4 f |
        c'4. bes8 a4 a |
        a4 g8 a d,4 a'8 f! |
        d16 e f4 e8 fis gis a g |
        f16 e f4 e8 f4 c' ~ |
	c8 bes16 a g4 ~ g8 f16 e f8 bes!16 a |
        gis8 a d d, a'2 |
        f8 g a4 ~ a8 g16 fis g4 ~ |
	g8 fis8 g e fis!2_\fermata |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        d4 |
        e8. d16 c8 b a4 bes8. c16 |
        d2\fermata cis4 d8 e |
        f4. f,8 g bes a4 |
        d2\fermata r4 d, |
        e4. f8 g gis a4 ~ |
	a8 bes8 a g f4\fermata cis' |
        d4 e f8 e d4 ~ |
	d8 cis8 d4 a2\fermata |
        fis8 e fis d g a bes g |
        d'2 d,\fermata | 
        \bar "||"
        
        \time 4/4
        d'8 e f4 ~ f8 e8 f g |
        a8 f bes4 f\fermata f |
        cis4 d4 ~ d8 e f g |
        a4 a, bes\fermata a |
        e8 d e f g4 a ~ |
	a8 g8 f e f4\fermata f'8 e |
        d2 ~ d8 e f g |
        a8 a, d4 c2\fermata |
        fis,8 g c4. bes16 a bes8 g |
        d'2 d,\fermata |
        \bar "||"

        \time 4/4
        \set Timing.measureLength = #(ly:make-moment 1 4)
        cis'4 |
        \set Timing.measureLength = #(ly:make-moment 4 4)
        d4 e f\fermata a,8 bes |
        c4 c, f\fermata cis' |
        d8 d, e fis g4\fermata a |
        b!4 c4. b8 a4 ~ |
	a8 d8 bes c f4\fermata f, |
        bes4 es8 d cis4 d ~ |
	d8 c!8 b!4 a2\fermata |
        bes8 a g fis g a bes! g |
        d1\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "197." }
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

