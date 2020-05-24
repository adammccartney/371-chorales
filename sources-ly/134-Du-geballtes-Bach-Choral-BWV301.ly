
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 301" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Du geballtes Weltgebäude" }
                     \line { \italic "old: Du, o schönes Weltgebäude" }
                 } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 40 r1 \tempo 4 = 78 | } %fin du repeat
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key d \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        d4 a d d |
        e4 c b!2 |
        a2\fermata f4 a |
        g4 f e4. d8 |
        d1\fermata | } %fin du repeat
\break
        f4 g a a |
        bes4 a g2 |
        f2\fermata f4 g |
\break
        a4 a bes a |
        g2 f\fermata |
        a4 b c a |
\break
        d4 d cis2\fermata |
        d8 e f4 e d |
        d4 cis d2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        f4 a a gis8 a |
        b8 e, e4 f e8 d |
        cis2 d4 d8 cis |
        d8 e8 ~ e d8 d4 cis |
        a1 | } %fin du repeat
        d4 e f f |
        f8 g8 ~ g8 f8 f4 e |
        c2 d4. c8 ~ |
	c8 f8 a4 ~ a8 g8 ~ g8 f8 ~ |
	f8 e16 d16 e4 c2 |
        f4 f g4 ~ g8 f8 |
        f4 f8 e e2 |
        f8 g a4 g f |
        e4 e fis2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key d \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        a4 f'8 e d c b4 ~ |
	b4. a8 a4 gis |
        e2 a4 a |
        d,8 a' a4 bes!4 a8. g16 |
        f1 | } %fin du repeat
        a4 c c c |
        d8 c c4 d8 bes g c16 bes |
        a2 a4 g |
        f8 a d es d4 c |
        d4 c8 bes a2 |
        c4 d c c |
        d8 c b4 a2 |
        a4 d8 c bes4 a |
        bes4 a a2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        d4. c8 b4. a8 |
        gis4 a d e |
        a,2\fermata d8 e f4 |
        b,8 cis d4 g, a |
        d1\fermata | } %fin du repeat
        d4 c8 bes a g f e |
        d8 e f4 bes c |
        f,2\fermata d'4 e |
        f4 fis g a |
        bes4 c f,2\fermata |
        f8 e d4 e8 c f4 |
        bes8 a gis4 a2\fermata |
        f8 e d4 ~ d8 cis d8 f |
        g8 e a4 d,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "134." }
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

