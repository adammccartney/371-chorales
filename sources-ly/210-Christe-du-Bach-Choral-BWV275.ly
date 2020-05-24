
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 275" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Christe, du Beistand deiner Kreuzgemeine" }
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
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 40 r2. 
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
	\relative c' {
        d4 |
        d4 e f2 |
        e2\fermata a4 b |
        c4 d8 c b2 |
\break
        a2\fermata r4 c |
        b4 a g g |
        a4 g f f |
        e2 f4\fermata e |
\break
        e4 f g2 |
        e2\fermata a4 b |
        c4 d8 c b2 |
        a2\fermata r4 fis |
\break
        g4 g g fis |
        g2\fermata r4 e |
        f4 g e2\trill |
        d2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 |
        a4 e' e d |
        cis2 e4 e |
        a4 a a gis |
        e2 r4 a ~ |
	a8 g8 f e d4 g ~ |
	g8 f ~ f e ~ e d c d |
        c2 c4 cis8 d |
        e4 ~ e8 d ~ d c d b |
        c2 a'4 a ~ |
	a8 gis8 a4 a gis! |
        e2 r4 c |
        d4 d es d |
        d2 r4 cis |
        d4 d ~ d cis |
        a2.
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
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        f8 g |
        a4 a a2 |
        a2 a4 e' |
        e4 d8 e f4 e8 d |
        c2 r4 e |
        f8 e16 d c4 b c |
        c4 c a a |
        g8 a bes4 a a |
        a4 a g2 |
        g2 e'4 f |
        e4 d8 e f4 e8 d |
        c2 r4 a |
        g4. f8 es bes' a c |
        bes2 r4 a |
        a4 g8 bes a e a g |
        fis2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        d8 e |
        f8 e d cis d e f d |
        a2\fermata c8 b a gis |
        a8 c f e d b e4 |
        a,2\fermata r4 a |
        d8 e f4 ~ f e4 |
        f4 c d a8 bes |
        c2 f,4\fermata a |
        cis4 d8 c b a b g |
        c2\fermata c4 d |
        e4 f8 e d4 e |
        a,2\fermata r4 a |
        bes4 b c d |
        g,2\fermata r4 a |
        d8 c bes g a2 |
        d2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "210." }
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

