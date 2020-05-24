
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 345" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Ich bin ja, Herr, in deiner Macht" }
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
        g4 |
        a4 a8 bes16 c bes8 g d'4 ~ |
	d8 c16 bes a8 g fis!4\fermata a4 |
\break
        bes4 c8 d16 es d8 bes f'4 ~ |
	f8 e16 d c8 bes a4\fermata d |
\break
        cis4 d e8 f16 g f8 e |
        e2\trill d4\fermata } %fin du repeat
\break
        d4 |
        bes8 a b d g es c4 |
        d8 f es d es4\fermata a,4 |
\break
        d4 g, c8 d16 es d8 c |
        bes4 a8 g g4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 |
        es4 d d4. d8 |
        g4 fis8 g d4 fis! |
        g4 f! f4. f8 |
        bes4 c8 e, f4 f |
        g4 f e d |
        e8 f g4 fis } %fin du repeat
        a4 |
        g4 g g4. es8 |
        aes4 g g fis |
        g8 f! e4 fis8 g a4 |
	a8 g8 fis4 d4
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
        c8 bes a4 g4. a8 |
        bes4 c8 bes a4 d |
        d4 c bes4. c8 |
        d4 g,8 c c4 bes |
        bes4 a a a8 d |
        d8 cis16 b cis4 a4 } %fin du repeat
        d4 |
        d4 d c4. c8 |
        c4 b c d |
        d4 c c8 bes a d |
        d4 c8 bes bes4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        g4 |
        g4 fis g4. f8 |
        es8 d es c d4\fermata d4 |
        g4 a bes4. a8 |
        g8 f e c f4\fermata bes |
        e,4 f cis d |
        a'4 a, d4\fermata } %fin du repeat
        fis4 |
        g4 f! es4. aes8 |
        f8 d g4 c,\fermata c'4 |
        bes8 a bes c a g fis4 |
        g4 d g,4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "251." }
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

