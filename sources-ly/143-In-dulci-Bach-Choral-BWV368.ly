
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 368" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "In dulci jubilo" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
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
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        f4 |
        f2 f4 |
        a2 bes4 |
        c2 d4 |
        c2.\fermata |
\break
        f,2 f4 |
        a2 bes4 |
        c2 d4 |
        c2.\fermata |
        c2 d4 |
        c2 bes4 |
\break
        a4. bes8 a g |
        f2\fermata f4 |
        g2 g4 |
        a2 g4 |
        f2 g4 |
        a2.\fermata |
\break
        c2 d4 |
        c2 bes4 |
        a4. bes8 a g |
        f2\fermata f4 |
        g2 g4 |
        a2 g4 |
\break
        f2 g4 |
        a2.\fermata |
        d,2 d4 |
        e2 e4 |
        f8 e f g a bes |
        c2.\fermata |
\break
        a2 a4 |
        g2 g4 |
        f2. ~ |
        f2.\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        c4 |
        d2 d4 |
        e2 e4 |
        f2. |
        f2. |
        f4 e d |
        c2 d4 |
        c4 e g |
        e2. |
        f2 f4 |
        e4 f g |
        cis,4 d e |
        a,2 f'4 |
        f4 e8 d e4 |
        f2 e4 |
        f4. g8 f e |
        f2. |
        f2 f4 |
        g4 f g |
        g4 f e |
        d2 f4 ~ |
	f4 e8 d e4 |
        f2 e4 ~ |
	e4 a,4 d |
        cis2. |
        d2 d4 ~ |
	d4 c8 d e4 ~ |
	e4 d2 |
        c2. |
        c4 f8 e f4 |
        f2 e4 |
        f8 es d c d bes |
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
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 |
        a2 bes4 |
        c2 bes4 |
        a2 bes4 |
        a2. |
        a2 bes4 |
        a4 g f |
        g4 c b |
        g2. |
        a2 bes4 |
        c4 d e |
        a,4 b cis |
        d2 c4 |
        d4 bes c |
        c2 c4 |
        c4 a c |
        c2. |
        a2 bes4 |
        g2 e'4 |
        e4 d cis |
        a2 c4 |
        d4 bes c |
        c2 c4 |
        a2 bes4 |
        e,2. |
        r8 f8 g a bes a |
        g4 a8 bes c bes |
        a4. g8 f4 |
        g2. |
        a4 bes c |
        d4 bes c4 ~ |
	c4 bes8 a bes g |
        a2. |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        f4 |
        d4 c bes |
        a4 bes8 a g a |
        f8 f' es d c bes |
        f'2.\fermata |
        d4 c bes |
        f'4 e d |
        e4 c g |
        c2.\fermata |
        f2 bes4 ~ |
	bes4 a4 g4 ~ |
	g4 f4 e |
        d2\fermata a4 |
        bes4 g c |
        f,8 g a bes c bes |
        a4 f c |
        f2.\fermata |
        f'4 e d |
        e4 d c |
        f8 g a4 a, |
        d2\fermata a4 |
        bes4 g c |
        f,8 g a bes c a |
        d4 c bes |
        a2.\fermata |
        bes4 a g |
        c4 bes a |
        d8 c d e f d |
        e2.\fermata |
        f,4 g a |
        bes4 g c |
        a4 bes2 |
        f2.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "143." }
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

