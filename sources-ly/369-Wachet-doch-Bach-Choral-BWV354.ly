
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 354" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line {"Wachet doch, erwacht, ihr Schläfer"}
                     \line { \italic "  old: Jesu, der du meine Seele"}
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
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 | } %fin du repeat
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
        \key bes \dorian % aes \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        f4 f c des |
        es4 des8 c c4 bes\fermata |
        des4 des c bes |
        a4 bes c2\fermata | } %fin du repeat
        c4 des es8 des c4 |
        des4 c8 bes bes4 aes\fermata |
        des4 es f8 es des4 |
        ges4 f es des\fermata |
        c4 des es f |
        es4 des c2\fermata |
        bes4 c des es8 des |
        c4. c8 bes2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        bes4 f8 g a4 f |
        es8 f ges4 f8 es des4 |
        f4 bes8 aes ges f f es |
        es8 c f g! a!2 | } %fin du repeat
        a4 bes bes aes |
        aes8 g aes4 g es |
        bes'4 aes aes bes8 aes |
        bes8 c des4 aes8 ges f4 |
        aes4 aes aes aes8 bes |
        c4 bes a2 |
        bes4 f f es8 f |
        ges4 f8 es d2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key bes \dorian % aes \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        des8 c bes4 f'8 es des c |
        bes4 c a f |
        bes4 bes bes8 a bes4 |
        c4 bes8 des c2 | } %fin du repeat
        f4 f es es |
        des8 es f4 es8 des c4 |
        f8 ges f es des c bes4 |
        es4 aes,8 bes c4 des |
        es4 f es des |
        ges8 f f e f2 |
        f4 f bes, bes |
        bes4 a f2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        bes8 c des es f4 bes8 aes |
        ges4 f8 es f4 bes,\fermata |
        bes'8 aes! ges f es f ges!4 |
        c,8 es des bes f'2\fermata | } %fin du repeat
        f4 bes8 aes! g! es aes g |
        f8 es des4 es aes,\fermata |
        bes4 c des ges8 f |
        es4 f8 ges aes4 des,\fermata |
        aes'8 ges f es des c des4 |
        a4 bes f'2\fermata |
        des'8 c bes a bes aes ges f |
        es4 f bes,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "369." }
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

