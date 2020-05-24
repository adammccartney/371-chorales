
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 316" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Gott, der du selber bist das Licht" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key g \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        d4 |
        g,4 a8 bes c4 bes |
        a4 a g\fermata c4 |
        c4 c d c |
        d4 e f\fermata d |
        c4 bes a g |
        a2 g4\fermata } %fin du repeat
\break
        a4 |
        bes4 c d es |
        d4 c bes\fermata d4 |
        f4 es d g,8 a |
        bes4 a g4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 |
        g4 fis8 g a4. g8 ~ |
	g8 fis16 e fis4 d g |
        f8 e f4 f f |
        bes8 d4 cis8 d4 bes |
        a4 d,8 e fis4 g |
        g4 fis d4 } %fin du repeat 
        f4 |
        f8 bes4 a8 bes4 c ~ |
	c8 bes4 a8 f4 f |
        f8 a g f f4 es |
        d8 g4 fis8 d4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        bes8 c |
        d4 c8 d es d d4 |
        es8 c a d16 c bes4 c8 bes |
        a8 bes c a bes4 c |
        bes8 a g4 a g' ~ |
	g8 fis8 g4 d8 c bes4 |
        es8 c a d16 c bes4 } %fin du repeat
        c4 |
        d4 es f f |
        f4 g8 f16 es d4 d |
        c8 d bes c d4 c8 fis, |
        g8 d' d8. c16 b4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        g8 a |
        bes4 a8 g fis4 g |
        c8 a d4 g,\fermata e |
        f8 g a f bes bes'4 a8 |
        g8 f e4 d\fermata g, |
        a4 bes8 c d4 es8 d |
        c4 d g,\fermata } %fin du repeat
        f'8 es |
        d4 c bes8 bes'4 a8 |
        bes8 d, es f bes,4\fermata bes |
        a8 f g a bes4 c |
        bes8 g d'4 g,4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "225." }
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

