
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 413" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Lasset uns den Herren preisen" }
                     \line { \hspace #9 \italic "old: Sollt' ich meinem Gott nicht singen" }
                 } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        R2. |
        R2. |
        R2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 | } %fin du repeat
        R2. |
        R2. |
        R2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. |
	}

  upper = {
	\time 3/4
	\key d \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4. e8 f g |
        a2 d4 |
        d4 e cis |
        d2 d4\fermata |
\break
        f2 e4 |
        d2 c4 |
        d8 c bes2 |
        a2.\fermata | } %fin du repeat
\break
        a2 a8 bes |
        c2 f,4 |
        bes2 a4 |
        g2 g4\fermata |
\break
        g2 a4 |
        bes2 c4 |
        bes4 a bes |
        g2.\fermata |
\break
        a2 a8 bes |
        c2 a4 |
        bes4 a2 |
        g2.\fermata |
\break
        f2 f4 |
        f4 e f |
        g4 f g |
        a2 a4\fermata |
\break
        a2 g4 |
        a2 g4 |
        a4 b2 |
        c2.\fermata |
\break
        d2 e4 |
        f4. e8 d4 |
        d4 e cis |
        d2.\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        a4 d8 cis d e |
        f8 e f g a4 ~ |
	a4 bes4 a |
        a2 a4 |
        a2 a4 |
        f2 f4 |
        f4 f8 g f e |
        f2. | } %fin du repeat
        f2 f4 ~ |
	f8 g8 f e f4 |
        f2 f4 ~ |
	f4 e8 d e4 |
        e4 d d |
        d4 g8 fis g4 |
        g4 g fis |
        d2. |
        f!8 e f g d f |
        g8 e f g a g |
        f2 f4 ~ |
	f4 e2\fermata |
        f4 c2 |
        d4 e d8 c |
        d4 c8 d e4 |
        f2 f4 |
        f2 g4 |
        g4 f e |
        f2 g4 |
        g2. |
        g4 a2 |
        a4. g8 f4 ~ |
	f4 e4 e8 g |
        fis2. |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key d \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        f4. g8 a4 ~ |
	a4 d4. e8 |
        f4 g e8 g ~ |
	g4 f8 e f4 |
        d2 c4 ~ |
	c4 bes4 ~ bes8 a |
        bes8 c d4 c |
        c2. | } %fin du repeat
        d2 d4 |
        c2 a4 |
        d4 c2 |
        c2 c4 |
        c4 d a ~ |
	a4 g4 c8 d |
        es8 d es c a d |
        bes2. |
        d4 d d |
        c2 c4 |
        d4 c2 |
        c2. |
        c4 ~ c8 bes a g |
        a2 a4 |
        g4 a bes |
        c2 c4 |
        c2 c4 |
        c2 c4 |
        c4 d2 |
        e2. |
        bes4 f' e ~ |
	e4 d8 cis d c |
        bes4 bes a |
        a2. |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        d4 d, d' |
        d8 cis d e f g |
        a4 g a |
        d,2 d,4\fermata |
        d'8 e f g a a, |
        bes8 c d e f f, |
        bes8 a g4 c |
        f,2.\fermata | } %fin du repeat
        d'4 d' c8 bes |
        a8 a, bes c d c |
        d8 e f g a bes |
        c2 c,4\fermata |
        c'4 bes8 a g fis |
        g8 f! es d es d |
        c8 bes c4 d |
        g,2.\fermata |
        d'8 cis d e f d |
        e8 c d e f e |
        d8 e f g a bes |
        c2.\fermata |
        a8 bes a g f e |
        d8 e d c bes a |
        bes8 g c bes a g |
        f2 f4\fermata |
        f8 a c f ~ f e |
        f8 g a bes c c, |
        f8 e d g f g |
        c,2.\fermata |
        g8 g' f e d cis |
        d8 f g a bes a |
        g8 f g e a8 a, |
        d2.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "220." }
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

