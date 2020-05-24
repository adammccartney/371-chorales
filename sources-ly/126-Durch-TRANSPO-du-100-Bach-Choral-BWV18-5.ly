
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 18.5 (Leipzig)" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { \italic "COPIE transposée du 100" }
      \line { \hspace #9 "Durch Adams Fall ist ganz verderbt" }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
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
        a4 a g a |
        f4 e d4\fermata a'8 b |
        c4 d a b |
        c4 b a4\fermata } %fin du repeat
        c4 |
        c4 c8 bes a g f g |
        a4 g f4\fermata a |
        a4 a g f8 e |
        e2 d4\fermata a' |
        a4 g a b! |
        c8 b a4 g4\fermata d' |
        e4 d a8 b c4 |
        b4 a b2 |
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
        f4 f f e ~ |
        e8 d4 cis8 d4 f |
        e4 d8 e f4 f |
        e4 d cis } %fin du repeat
        a'4 |
        g8 f e d c4 d8 e |
        f4 e f c8 d |
        e4 d d d |
        d4 cis d e |
        f4. e8 f a g f |
        e8 d c4 b g' |
        g4 f8 e d4 e |
        e8 d c4 f e8 d |
        cis2.
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
        a4 |
        d4 d d a |
        a4. g8 f4 d' |
        c8 b a4 d d |
        gis,8 a4 gis8 a4 } %fin du repeat
        e'4 |
        c4 g a a8 bes |
        c4. bes8 a4 a |
        a8 g f4 g8 a bes4 |
        a4. g8 f4 a |
        d8 c! bes4 c d |
        g,4. fis8 g4 b |
        c8 b a gis a4 a |
        gis4 a2 gis4 |
        a2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        cis4 |
        d8 e f4 b, cis |
        d4 a d\fermata d |
        a'8 g f e d c b a |
        e'2 a,4\fermata } %fin du repeat
        a'4 |
        e8 d c4 f8 e d4 |
        a8 bes c4 f,\fermata f' |
        cis4 d8 c bes a g4 |
        a2 d4\fermata cis |
        d4 g f8 e d4 |
        c4 d g,\fermata g' |
        c,4 d8 e f4 c8 d |
        e4 f8 e d4 e |
        a,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "126." }
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

