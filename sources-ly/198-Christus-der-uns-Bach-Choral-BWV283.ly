
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 283" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Christus, der uns selig macht" }
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
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key a \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        e4 e e e |
        d4 c b2\fermata |
        a4 gis a b8 c |
        d4 c b2\fermata |
        a4 b c8 b a4 |
        a8 g f4 e2\fermata |
        d4 cis d e8 f |
        g4 f e2\fermata |
        a4 a a g |
        f4 e d2\fermata |
        g4 a b c |
        d4 e d c |
        b2\fermata a4 b |
        c8 b8 a4 a8 g f4 |
        e2\fermata d4 cis!4 |
        d4 e8 f g4 a |
        g4 f e2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        gis8 a b gis a4 a |
        a8 e e4 e2 |
        c8 d8 e4 ~ e8 fis gis! a |
        b4 ~ b8 a a4 gis\fermata |
        a8 g! f4 g4 ~ g8 f |
        e4 ~ e8 d cis2 |
        d8 g, a4 a8 b cis! d |
        e4 ~ e8 d cis2 |
        c!4 f4 ~ f8 e16 d e4 ~ |
	e8 d4 cis8 d2 |
        b8 e ~ e d d4 e |
        f8 g ~ g a ~ a g g4 |
        g2 e8 fis g4 |
        g4 a8 g f e d4 |
        d4 cis\fermata d8 a bes g |
        a8 b! c d e4 f ~ |
	f8 e4 d16 c16 b2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key a \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        b4 e8 d c d e c ~ |
	c8 b ~ b a a4 gis!\fermata |
        a4 b c d8 e |
        f8 e e4 e2 |
        c4 d c4 ~ c8 d8 |
        a4 a a2 |
        f8 d e4 f g8 a |
        bes8 a a4 a2 |
        a8 bes c4 c4. bes!8 |
        a4. a16 g f2 |
        g8 c8 ~ c d16 c b8 d g, c ~ |
	c8 b8 c e f4 ~ f8 e |
        d2 c4 d |
        c4. cis8 d4 a |
        a2 a4 g8 e |
        f4 g c c ~ |
	c8. bes16 a8 b16 a gis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        e8 fis gis e a b c a |
        fis8 gis a a, e'2\fermata |
        f4 e8 d c4 b8 a ~ |
	a8 gis8 a c e2\fermata |
        f8 e d4 e f |
        cis4 d a2\fermata |
        bes4 a8 g f4 e8 d ~ |
	d8 cis8 e f a2\fermata |
        f8 g a bes c4. cis8 |
        d4 a d,2\fermata |
        e'4 fis g8 f e4 |
        d8 g c,4. b8 c e |
        g2\fermata a4 g8 f! |
        e4 f8 e d e f g |
        a2\fermata f4 e |
        d4 c4 ~ c8 bes a f |
        c'4 d e2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "198." }
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

