
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 435" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Wie bist du, Seele, in mir so gar betrübt" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key e \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        b4 |
        b4 a g2 |
        fis4\fermata g a g |
        fis4 fis e\fermata fis |
        g4 a b2 |
        a4\fermata c c b |
        a4 a g\fermata a |
        a4 a a fis |
        g4 a b2 |
        a4\fermata fis g a |
        b4 b a g8 fis |
        fis2 e4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e8 dis |
        e8 b cis dis e dis e4 |
        e8 dis\fermata e4 ~ e8 dis! e4 |
        e4 dis b dis! |
        e4 d8 c b d g4 |
        fis4 e d d |
        e4 d8 c b4 d |
        d8 cis d e fis4 d |
        d8 e fis4 g d |
        d4 fis b,8 e d c |
        b4 e4 ~ e8 dis e4 |
        e4 dis b
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key e \minor
	\clef bass
	\partial 4
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g8 a |
        b8 e4 a,8 b2 |
        b4 b a8 b16 c b4 |
        cis8 fis, b a! g4 b |
        b8 c b a g b d4 |
        d4 c8 b a fis g4 ~ |
	g4 fis4 g fis8 g |
        a4 a d a |
        b4 c d g,4 ~ |
	g8[ fis8]\fermata b a g4 d'!4 ~ |
	d8 f8 e d c4 cis |
        b4. a!8 gis4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        e8 fis |
        g4 ~ g8 fis e8 fis g e |
        b4\fermata e fis g8 e |
        ais,4 b e,\fermata b' |
        e4 fis g g,8 b |
        d4\fermata a'8 g fis d g8 b, |
        c8 a d4 g,\fermata d'8 e |
        fis8 g fis e d e d c! |
        b8 c b a g a b c |
        d4\fermata dis e fis |
        g4 gis a ais |
        b4 b, e4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "242." }
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

