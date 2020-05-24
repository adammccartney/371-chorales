
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 424" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Was bist du doch, o Seele, so betrübet" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 | } %fin du repeat
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        R1 |
        \tempo 4 = 40 r1 |
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
	\repeat volta 2 {
        r4 e4 c4. b8 |
        a4\fermata e' f e8 d |
        c4 d e e\fermata | } %fin du repeat
        r4 c4 d4. g,8 |
        g2\fermata r4 d'4 |
        e4. c8 c2\fermata |
        r4 e4 f e |
        d4 c b4. a8 |
        gis8 e' d c b2 |
        a2\fermata r2 |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        r4 a4 a gis |
        e4 a a gis |
        e4 a gis gis | } %fin du repeat
        r4 a4 g f4 ~ |
	f4 e4\fermata r4 g4 |
        g4 g f2 |
        r4 g4 f8 a gis4 |
        a8 d, e4 f e |
        d4 a'4 ~ a gis! |
        e2 r2 |
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
	\repeat volta 2 {
        r4 c8 d e4 e8. d16 |
        c4 c b b |
        a8 c b a b4 b | } %fin du repeat
        r4 e4 d d |
        c2 r4 d4 |
        c4 c8 bes a2 |
        r4 cis4 d4 ~ d8 c8 ~ |
	c8 b8 ~ b a8 ~ a gis8 ~ gis a |
        b4 e e e8 d |
        cis2 r2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        r4 a4 a' e |
        a,4\fermata a' d, e |
        a4 f e e\fermata | } %fin du repeat
        r4 a,4 b2 |
        c2\fermata r4 b4 |
        c4 e f2\fermata |
        r4 e d e |
        f4 e d c |
        b4 a e' e, |
        a2\fermata r2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "193." }
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

