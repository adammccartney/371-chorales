
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 155.5 " }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Es ist das Heil uns kommen her" }
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
	\key f \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        c4 |
        c4 c c8 d es4 |
        d4 c bes\fermata c8 bes |
        a8 g f g a4 b |
        c8. d16 d4\trill c4\fermata } %fin du repeat
        c4 |
        f4 e d e |
        f8 e d4 c\fermata c4 |
        f4 c d a8 bes |
        c4 bes a\fermata a4 |
        g8 a bes4 a g |
        d4 e f\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        f4 |
        f4 e f g |
        f4 f8 es d4 c |
        c4 c f8 a g f |
        e8. f16 g8. f16 e4 } %fin du repeat
        f8 g |
        a4 g g8 f e g |
        c,8 a' d, g e4 f8 g |
        a8 bes a g f4 f |
        e4 d8 e fis4 f |
        e4 d c8 d e4 |
        d4 c8 bes a4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key f \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        a8 bes |
        c8 d c bes a4 g8 a |
        bes4 a bes g |
        f8 g a bes c4 d |
        g,8 c4 b8 c4 } %fin du repeat
        a4 |
        a8 b c4 b8 a g4 |
        f8 c' b4 c a8 bes |
        c4 f8 e d4 d |
        g,8 a bes c d4 c |
        c4 f,8 g a bes c4 |
        bes8 a g4 f4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        f4 |
        a,8 bes c4 f, c' |
        d8 es f4 g\fermata e4 |
        f4 f, f'8 e d4 |
        c4 g c4\fermata } %fin du repeat
        f8 e |
        d4 e8 f g4 c,8 b! |
        a8 g g4 c\fermata f |
        f,8 g a4 bes8 c d4 |
        e8 fis g4 d\fermata a8 bes |
        c4 d8 e f4 e8 f |
        g4 c, f,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "335." }
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

