
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 401" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "O Lamm Gottes, unschuldig" }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
	\key f \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        f4 |
        f4 f c' c |
        d2 c4\fermata c |
        f,4 g a bes |
        a4 g8 f f4\fermata } %fin du repeat
\break
        a4 |
        a4 a g a |
        f8 e d4 c\fermata c' |
\break
        d4 c c a8 bes |
        c4 bes a4\fermata d |
\break
        c8 bes a4 g a |
        c4 a g2 |
        f2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        c4 |
        c16 d es8 es d e c f e |
        a4 g8 f e4 e4 ~ |
	e8 d ~  d c c8 d16 e f4 ~ |
	f8 e16 d e4 c } %fin du repeat
        f4 |
        f4 f f e |
        d8 c ~ c b g4 es' |
        d8 e! f g16 a g4 f |
        a4. g8 ~ g fis\fermata g4 |
        g4 f g4 ~ g8 f16 e |
        f4 f ~ f e |
        c2.
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key f \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        a8 bes |
        c4 ~ c8 bes16 a g4 c4 ~ |
	c4 b4 g a |
        a4 g f4 ~ f8 d' |
        c4 c8. bes16 a4 } %fin du repeat
        c4 |
        c4 d d a |
        a8 g a g16 f e4 f |
        f8 g a bes c4 ~ c8 d |
        es4 d d d8 f |
        e!4 ~ e8 d8 ~ d c c4 |
        c8 a f a d4 c8 bes |
        a2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c, {
	\repeat volta 2 {
        f8 g |
        a4 bes ~ bes a8 g |
        f4 g c\fermata a |
        d4 e f8 e d bes |
        c4 c, f\fermata } %fin du repeat
        f'4 ~ |
	f8 e8 d c b4 cis |
        d8 e f g8 c,4\fermata a |
        bes4 f'4 ~ f8 e f4 |
        f8 fis g g, d'4\fermata bes8 b |
        c4 d e f |
        a,8 bes16 c d8 c bes4 c |
        f,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "165." }
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

