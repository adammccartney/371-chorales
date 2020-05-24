
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 90.5" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Vater unser im Himmelreich" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 34 r2 
	}

  upper = {
	\time 4/4
	\key d \minor
	\clef treble
	\partial 4
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 |
        a4 f g a |
        f4 e d\fermata a' |
        a4 g c a |
        f4 g a\fermata a |
        c4 d f e |
        d4 cis d\fermata d |
        e4 d c b!\fermata |
        a4 b a\fermata d |
        c4 b c8 bes a4 |
        a4 g f\fermata a |
        bes4 a a g |
        f4 e d2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        f4 |
        e4 d d8 cis d4 |
        d4 cis a e' |
        d4. e8 f4 cis |
        d4 d cis e |
        f4 a g a8 g |
        f4 e fis g |
        g8 a b4 a gis |
        a4. gis8 e4 e |
        e8 f g4 g f |
        f4. e8 f4 fis |
        g8 f! e4 d8 cis d e |
        a,8 d d cis a2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key d \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 |
        a4 a g f8 g |
        a4 a8 g f4 a |
        bes8 c d4 c8 d e4 |
        a,4 bes e, c'!8 bes |
        a4 f'8 e d4 e |
        a,4 a a b |
        c4 f e d |
        c4 f8 e cis4 b |
        c!4 d c c |
        d4. c8 aes4 es' |
        d4. cis8 d2 |
        d8 a bes a fis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        d4 |
        cis4 d e d8 e |
        f8 g a a, d4\fermata c |
        bes4 bes' a8 g f e |
        d8 c bes4 a\fermata a'8 g |
        f8 e d c b4 cis |
        d4 a d\fermata g |
        c8 b a gis a g f e |
        f8 e d e a,4\fermata gis |
        a8 a' g f e4 f8 e |
        d8 c bes c des4\fermata c |
        g4 a bes8 a b cis |
        d8 f g a d,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "267." }
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

