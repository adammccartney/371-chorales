
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 346" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Ich dank dir Gott für alle Wohltat" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 34 r1 |
	}

  upper = {
	\time 4/4
	\key c \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 |
        e4 fis g\fermata g |
        e4 d c\fermata c |
        g'4 g a b |
        c4 b a a |
        g2 r4 g4 |
        a4 b c\fermata g |
        a4 g f f |
        e2\fermata r4 c'!4 |
        a4 b c\fermata a |
        g4 f e\fermata g |
        e4 fis g\fermata c |
        b4 a g\fermata g |
        e8 f g4 a g |
        f4 e d d |
        c1\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        c4 |
        c4 c b d ~ |
	d8 c4 b8 g4 g |
        d'4 e4 ~ e8 fis g4 ~ |
	g8 fis8 g4 ~ g4 ~ g8 fis |
        d2 r4 e4 ~ |
	e8 d ~ d e e4 c ~ |
	c8 b8 c cis d cis d4 ~ |
	d4 cis4\fermata r4 g'4 ~ |
	g8 f16 e f4 e f |
        e4 ~ e8 d8 ~ d cis\fermata d4 |
        e4 b b g'8 a ~ |
	a8 g4 fis8 d4 d |
        c4 c c8 f4 e8 |
        d4. c8 ~ c b16 a b4 |
        g1 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key c \major
	\clef bass
	\partial 4
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        e8 f |
        g4 a d, g |
        g4 ~ g8. f16 e4 e |
        g4 c c d |
        c4 d e d8. c16 |
        b2 r4 c4 |
        c4 b a e |
        f4 g a a |
        a2 r4 c4 |
        c4 d g, d'8 c |
        bes4 a a g ~ |
	g8 a ~ a g16 fis e4 e'8 d |
        d4 d8. c16 b4 g |
        g4 c8 bes a8. b16 c8. bes16 |
        a8 g g4 a8 d, g f |
        e1 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        c4 |
        bes4 a g\fermata b |
        c4 g c,\fermata c' |
        b4 c8 b a4 g |
        e'4 d c d |
        g,2\fermata r4 e'4 |
        f4 gis, a c |
        f4. e8 d e f d |
        a'2\fermata r4 e4 |
        f8 e d4 c\fermata d4 ~ |
	d8 cis8 d4 a\fermata b! |
        cis4 dis e\fermata e8 fis! |
        g4 d g,\fermata b |
        c8 d e c f4 c ~ |
	c8 b8 c4 f, g |
        c,1\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "223." }
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

