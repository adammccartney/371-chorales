
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 28.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Helft mir Gotts Güte preisen" }
                     \line { \italic "old: Zeuch ein zu deinen Toren" }
                 } }
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
        \tempo 4 = 40 r2. \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
	\key a \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        a4 |
        a4 b c d |
        b4. c8 d4\fermata e4 |
        c4 a b b |
        a2.\fermata } %fin du repeat
        e'4 |
        d4 c b a |
        b2\fermata r4 b4 |
        c4 d e c |
        d4. c8 b4\fermata b4 |
        c4 d e c |
        d4. c8 b4\fermata e4 |
        c8 b a4 b b |
        a2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e4 |
        e4 e e d |
        d4 g8 fis g4 e |
        e4 a4 ~ a gis |
        e2. } %fin du repeat
        a4 ~ |
        a8 gis a4 ~ a8 gis! a a, |
        e'2 r4 gis4 |
        a4 g! g a |
        a4 g8 fis g4 g |
        g4 f! e4 a4 ~ |
        a8 g fis e d4 e |
        e4 a a gis |
        e2.
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key a \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        c4 |
        c4 b a a |
        g!8 fis g a b4 b |
        a8 b c4 f e8 d |
        c2. } %fin du repeat
        c4 |
        d4 e f8 e8 ~ e8 d |
        gis,2 r4 e'4 |
        e4 d c8 d e4 |
        a,4 d d d |
        g,4 a8 b c d e4 |
        d4 a b b |
        a8 b c4 f e8 d |
        cis2. 
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        a4 |
        a'4 gis a fis |
        g2 g,4\fermata gis' |
        a8 g! f! e d4 e |
        a,2.\fermata } %fin du repeat
        a4 |
        b4 c d8 e f4 |
        e2\fermata r4 e4 |
        a4 b c8 b a g |
        fis8 e d4 g\fermata f4 |
        e4 d c b8 a |
        b8 c d4 g,\fermata gis' |
        a8 g! f e d4 e |
        a,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "23." }
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

