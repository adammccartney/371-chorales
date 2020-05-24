
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 333" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Herr Jesu Christ, du hast bereit" }
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
        g4 |
        g8 a bes4 a8 g f4 |
        bes4 a bes\fermata bes |
        a4 g c bes |
        a2 g4\fermata } %fin du repeat
\break
        d'4 |
        bes4 c d c |
        bes4 bes a\fermata bes |
        bes4 a bes a |
        g4 g fis!4\fermata bes |
        a4 g c bes |
        a2 g4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 |
        es4 f8 g f4 c |
        f4 f f g4 ~ |
	g8 fis8 g4 ~ g8 a8 ~ a8 g |
        g8 fis16 e fis4 d4 } %fin du repeat
        a'4 ~ |
	a8 g ~ g f! f4 f8. es!16 |
        d8 e16 fis g4 fis g |
        f4 ~ f8 es! d8 g4 fis8 |
        g8 fis g g, d'4 g,8 g'8 ~ |
	g8 fis8 g f es4 d |
        es8 c a d16 c b4
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
        bes4 |
        bes8 c d4 c8 bes a4 |
        bes8 d c16 d es8 ~ es8 d8^\fermata d4 |
        es8 d16 c bes8 b c es d4 |
        es8 c a d16 c bes4 } %fin du repeat
        d4 |
        d4 c4 ~ c8 bes ~ bes a |
        bes8. c16 d4 d d |
        d4 c bes8 d es d ~ |
	d4. c8 a4 d |
        d8. c16 bes8 a g a ~ a g8 ~ |
	g8 fis16 e fis4 d
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        g8 f |
        es4 d8 es f4. es8 |
        d8 bes f'4 bes,4\fermata g4 |
        c8 d es d es c g bes |
        c8 a d4 g,4\fermata } %fin du repeat
        fis'4 |
        g4 a bes f |
        g8. a16 bes8 g d4\fermata g4 |
        d8 es! f fis g bes, c d |
        es2 d4\fermata g, |
        d'4 es4 ~ es8 fis, g bes |
        c8 a d4 g,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "226." }
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

