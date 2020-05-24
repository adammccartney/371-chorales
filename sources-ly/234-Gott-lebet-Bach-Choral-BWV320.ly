
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 320" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Gott lebet noch, Seele, was verzagst du doch?" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        R2. |
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 |
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
	\key f \major
	\clef treble

	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        f4 a b |
        c2.\fermata |
        c4 bes c |
        d4 c d |
        e4 d e |
        f2.\fermata |
\break
        a,2 bes4 |
        c4 bes a |
        g2 a4 |
        bes4 a g |
        f2 g4 |
        a2 g4 |
\break
        a2 b4 |
        c2.\fermata |
        e2 f4 |
        d2 f4 |
        e2 d4 |
        cis2 a4\fermata |
        d2 a4 |
\break
        bes4 a g |
        f2 e8 f |
        d2.\fermata |
        fis2 fis4 |
        g4 fis g |
        a4 bes c |
\break
        bes4 a8 bes g4\fermata |
        c2 c4 |
        c4 d e |
        f4 e d |
        e2 c4\fermata |
        f4 c a |
\break
        d2 c4 |
        bes4 c a |
        g2.\fermata |
        c4 a f |
        d'4 e f |
        a,2 g8 f |
        f2.\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        c4 f f |
        g2. |
        f4 g f |
        f2 f4 |
        g8 a bes2 |
        a2. |
        f2 f4 |
        f8 d e4 f |
        e2 fis4 |
        g4 f! e |
        f8 e d4 e |
        f2 g4 |
        f2 f4 |
        g2. |
        c2 c4 |
        bes4 f bes |
        bes2 bes4 |
        a2 e4 |
        a4. g8 f e |
        d4 ~ d8 cis d4 |
        d2 cis4 |
        a2. |
        c4 a d |
        d4 c bes |
        d2 d4 |
        d4 c bes |
        g'4 e f |
        g4 f e |
        d4 e8 f g4 |
        g2 e4 |
        f2 f4 |
        f2 f4 |
        g2 f4 |
        f4 e2 |
        f2 f4 |
        f4 g a |
        f2 e4 |
        c2. |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key f \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 c d |
        e2.\fermata |
        c4 d c |
        bes4 f bes |
        bes8 c d4 c |
        c2.\fermata |
        d2 d4 |
        c2 c4 |
        c2 c4 |
        d4 c c |
        c4 bes8 a bes4 |
        c2 c4 |
        c2 d4 |
        e2. |
        g2 f4 |
        f8 e d cis d4 |
        g2 f4 |
        e2 cis4 |
        d2 c!4 |
        bes4 f'8 e d e |
        f4 d a |
        f2. |
        a2 a4 |
        bes4 c d |
        a4 g fis! |
        g4 fis g |
        g2 a4 |
        c4 b c |
        c2 b4 |
        c2 g4 |
        c2 c4 |
        bes2 c4 |
        d4 c c |
        c2.\fermata |
        c2 c4 |
        bes4 bes c |
        c4 d8 c bes c |
        a2. |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c, {
        f4 f' d |
        c4 c' bes |
        a4 g a |
        bes4 a bes |
        g2 c,4 |
        f2 f,4 |
        d'4 c bes |
        a4 g f |
        c'4 bes a |
        g4 a bes |
        a4 bes g |
        f4 f' e |
        f4 e d |
        c2.\fermata |
        c'4 bes a |
        bes4 bes, a' |
        g4 f g |
        a4 a, g' |
        f4 e d |
        g4 a bes |
        a4 g a |
        d,2.\fermata |
        a4 d c |
        bes4 a g |
        fis'4 e d |
        g4 d g,\fermata |
        e'4 c f |
        e4 d c |
        d4 g g, |
        c2 c4\fermata |
        a2 f4 |
        bes4 <e bes'>4 a4 |
        g4 e f |
        c4 c' bes |
        a4 f a |
        bes4 g f ~ |
	f8 a,8 bes4 c |
        f,2.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "234." }
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

