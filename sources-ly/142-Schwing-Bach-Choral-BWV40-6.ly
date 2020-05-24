
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 40.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Schwing dich auf zu deinem Gott" }
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
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key d \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        d4 a d e |
        f4 d e2\fermata |
        c4 c c bes8 a |
\break
        g2 a2\fermata |
        d4 a d e |
        f4 d e2\fermata |
\break
        c4 c c bes8 a |
        g2 a2\fermata |
        f'4 f e e |
\break
        d4 e cis2\fermata |
        a4 b cis d |
        d4 cis d2\fermata |
\break
        f4 f e e |
        d4 e cis2\fermata |
        a4 b cis d |
        d4 cis d2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 a bes bes |
        a4 g g2 |
        a4 a8 g f4 f8 e |
        d8 cis d4 cis2 |
        a'4 a g8 f e4 |
        a8 g f4 e2 |
        e4 a a g8 a |
        bes4 c fis,2 |
        a4 g g a |
        a4 e a2 |
        e4 a g a |
        a4. g8 f2 |
        a4 g g g |
        f4 g e2 |
        f4 f e d8 e |
        f8 e16 d e4 fis2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key d \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        f4 e f g |
        c,4 d c2 |
        e4 f a,8 g f4 |
        f4 e8 d e2 |
        a4 d8 c bes4 b |
        cis4 d8 c b2 |
        c8 d es4 d d |
        d8 bes a g d'2 |
        d4 d c c |
        c8 b16 a b4 e2 |
        cis4 d e f |
        e2 d |
        c!4 d c8 bes! a4 |
        a4 bes a2 |
        d4 d g, a8 bes |
        a2 a |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 c bes g |
        a4 b c2\fermata |
        a8 g f e d4. c8 |
        bes2 a2\fermata |
        f'4 fis g gis |
        a4 bes8 a gis2\fermata |
        a4 g! fis g8 f |
        es2 d2\fermata |
        d'8 c b g c bes a g |
        fis4 gis a2\fermata |
        g!4 f e d |
        a'4 a, bes2\fermata |
        a4 b c cis |
        d4 g, g'2\fermata |
        f4 e8 d e4 f8 g |
        a4 a, d2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "142." }
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

