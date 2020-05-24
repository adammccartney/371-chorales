
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 313" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Für Freuden laßt uns springen" }
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
        d4 d d c |
        bes2 a4\fermata d4 |
        d8 es f4 es d |
        c2 d4\fermata } %fin du repeat
        d4 |
        c4 bes a g |
        a4 bes a\fermata d |
        bes4 bes c d |
        es4 d c c |
        d4. c8 b4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g8 fis |
        g4 fis8 g a g4 fis8 |
        g8 fis g4 fis f |
        g4 f c'4 ~ c8 bes |
        bes4 a bes } %fin du repeat
        bes8 a8 |
        g4 g4 ~ g8 fis g4 |
        c,8 a' d, e fis4 a ~ |
	a4 g8 f ~ f8 es aes8 g |
        g4 g a a8 g |
        fis8 g4 fis8 g4
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
        bes8 c8 |
        d8 c16 bes a4 ~ a8 bes c d |
        d4 d d d8 c |
        bes4 bes4 ~ bes8 a16 g f8 f' |
        g4 f f4 } %fin du repeat
        f4 |
        es8 d e4 a,8 d16 c! bes8 c16 bes |
        a8 d16 c bes a g8 d'4 d |
        d4 es8 f g4 f8 d ~ |
	d8 c8 d e fis a, d es |
        d8 c16 bes a8 d d4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        g8 a |
        bes8 c d e fis g a d, |
        g8 a bes c d4\fermata bes8 a |
        g8 f es d c f bes, d |
        es8 c f4 bes,\fermata } %fin du repeat
        bes4 |
        c4. cis8 d4 es!8 e |
        f8 fis g cis, d4\fermata fis4 |
        g8 f! es d c4. b8 |
        c8 c'4 bes8 a g fis g |
        d2 g4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "163." }
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

