
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 245.37" }
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
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 40 r1 \tempo 4 = 78 |
	}

  upper = {
	\time 4/4
	\key c \minor 
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        f4 f f f |
        es4 des c2\fermata |
        des4 es f f |
        es4 des c2\fermata |
        bes4 c des bes |
        bes8 aes ges4 f2\fermata |
        ges4 aes bes bes |
        aes4 ges f2\fermata |
        bes4 a bes c |
        des4 c8 bes bes2\fermata |
        des4 es f f |
        es4 des8 c8 c2\fermata |
        bes4 c des8 c bes4 |
        bes8 aes ges4 f2\fermata |
        ges4 aes bes bes |
        aes4 ges f2 ~ |
        f1\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 a bes c |
        bes4 bes a2 |
        f4 ges aes aes |
        ges4 f f2 |
        f4 f f ges |
        f4 es d2 |
        es4 es fes fes |
        es2 d2 |
        f4 es f ges |
        f4 f ges2 |
        aes4 aes aes bes |
        bes2 a |
        f4 f f ges |
        f4 es d2 |
        es4 f ges! ges |
        f4 es2 des4 |
        c1 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key c \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        c4 c des c8 des |
        es8 f ges4 c,2 |
        bes4 bes ces bes |
        bes2 a |
        des4 c bes8 c des! es |
        f8 bes, bes4 bes2 |
        bes4 ces des des |
        ces8 des es4 bes2 |
        des4 c bes bes |
        bes8 aes des4 des2 |
        f4 c des des |
        es8 f8 ges4 f2 |
        bes,4 a bes8 c des es |
        f8 bes, bes4 bes2 |
        bes4 des des des |
        des8 ces bes4 a bes |
        a1 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        f4 f bes aes |
        ges4 f8 es f2\fermata |
        bes4 ges d! d |
        es4 bes f'2\fermata |
        bes4 a bes ges |
        d!4 es bes2\fermata |
        es4 ces g! g |
        aes4 a bes2\fermata |
        bes4 c des es |
        f4 des ges2\fermata |
        f4 aes des8 c bes aes |
        ges4 f8 es8 f2\fermata |
        des4 f bes8 aes ges4 |
        d!4 es bes2\fermata |
        es4 des ges,8 aes bes ces |
        des4 es f2 ~ |
        f1\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge \center-column { \line { "(113)" } \line { "114." } } }
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

